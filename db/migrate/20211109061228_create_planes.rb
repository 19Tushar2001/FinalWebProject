class CreatePlanes < ActiveRecord::Migration[6.1]
  def change
    create_table :planes do |t|
      t.string :model
      t.integer :quantity
      t.string :licensePlate
      t.string :description
      t.integer :year
      t.integer :doorCount
      t.decimal :distacePerGallon
      t.references :manufacturer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
