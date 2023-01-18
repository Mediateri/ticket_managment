class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :plate_no, null: false
      t.string :no_seats, null: false
      t.references :schedule, null: false, foreign_key: true
      t.string :driver, null: false

      t.timestamps
    end
  end
end
