class CreateFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :friends do |t|
      t.bigint :user1
      t.bigint :user2

      t.timestamps
    end
  end
end
