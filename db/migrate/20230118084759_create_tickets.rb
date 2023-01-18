class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :name, null: false
      t.string :from, null: false
      t.string :to, null: false
      t.decimal :price, precision: 10, scale: 2
      t.references :schedule, null: false, foreign_key: true

      t.timestamps
    end
  end
end
