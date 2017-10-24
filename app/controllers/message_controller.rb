class MessageController < ApplicationController

	def message
		@messages = Message.joins(:user).where(user1: session[:user_id])

	end

	def show
		
	end

end
