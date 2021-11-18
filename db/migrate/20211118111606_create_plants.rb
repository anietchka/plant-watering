class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.boolean :alive
      t.string :photo
      t.date :last_watered_at
      t.date :next_watered_at
      t.integer :rytme
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
