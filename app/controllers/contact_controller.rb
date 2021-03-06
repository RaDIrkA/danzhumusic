class ContactController < ApplicationController

	def new
		@message = Message.new
	end

	def create
		@message = Message.new(params[:message])

		NotificationsMailer.new_message(@message).deliver
		redirect_to root_path
	end
end
