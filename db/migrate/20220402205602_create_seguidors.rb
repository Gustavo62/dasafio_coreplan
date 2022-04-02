class CreateSeguidors < ActiveRecord::Migration[6.1]
  def change
    create_table :seguidors do |t|
      t.integer :seguido
      t.integer :seguidor
      t.boolean :visualizado, default: false

      t.timestamps
    end
  end
end
