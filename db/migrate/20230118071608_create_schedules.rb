class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.references :route, null: false, foreign_key: true
      t.datetime :time, null: false

      t.timestamps
    end
  end
end
