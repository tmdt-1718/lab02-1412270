class MessageController < ApplicationController

	def message
		@messages = Message.select('messages.id, messages.content, messages.status, messages.user1, messages.user2, users.email').joins('LEFT OUTER JOIN "users" ON "users"."id" = "messages"."user2"').where(user2: session[:user_id])
		@friends = Friend.select('friends.id, friends.user1, friends.user2, users.email, users.name').joins('LEFT OUTER JOIN "users" ON "users"."id" = "friends"."user2"').where(user1: session[:user_id])
	end

	def show
		
	end

	#def create
	#	@user1 = session[:user_id]
	#	@user2 = params[:mail]
	#	@content = params[:content]
	#	@message = Message.new(user1: 4, user2: 6, content: "dsdsds", status: 0)
	#	@message.save
	#end
end
