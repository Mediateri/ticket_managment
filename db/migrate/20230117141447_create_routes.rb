class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.string :start_point, null: false
      t.string :end_point, null: false
      t.decimal :cost, precision: 10, scale: 2

      t.timestamps
    end
  end
end
