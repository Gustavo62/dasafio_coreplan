class CreateLikePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :like_posts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.boolean :like

      t.timestamps
    end
  end
end
