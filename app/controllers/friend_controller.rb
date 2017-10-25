class FriendController < ApplicationController
	def friend
		@friends = Friend.select('friends.id, friends.user1, friends.user2, users.email, users.name').joins('LEFT OUTER JOIN "users" ON "users"."id" = "friends"."user2"').where(user1: session[:user_id])
		@other_users = Friend.select('friends.id, friends.user1, friends.user2, users.email, users.name').joins('LEFT OUTER JOIN "users" ON "users"."id" = "friends"."user2"').all - Friend.select('friends.id, friends.user1, friends.user2, users.email, users.name').joins('LEFT OUTER JOIN "users" ON "users"."id" = "friends"."user2"').where(user1: session[:user_id])
	end
end
