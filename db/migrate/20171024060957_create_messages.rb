class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.bigint :user1
      t.bigint :user2
      t.string :content
      t.string :image
      t.boolean :status

      t.timestamps
    end
  end
end
