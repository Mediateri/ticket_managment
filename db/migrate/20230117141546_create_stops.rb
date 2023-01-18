class CreateStops < ActiveRecord::Migration[6.1]
  def change
    create_table :stops do |t|
      t.string :name, null: false
      t.string :from_point, null: false
      t.decimal :cost, precision: 10, scale: 2
      t.references :route, null: false, foreign_key: true

      t.timestamps
    end
  end
end
