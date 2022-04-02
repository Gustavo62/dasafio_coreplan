class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user
      t.string     :post_msg, null: false

      t.timestamps
    end
  end
end
