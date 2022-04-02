class CreateComents < ActiveRecord::Migration[6.1]
  def change
    create_table :coments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.string     :coment_msg, null: false

      t.timestamps
    end
  end
end
