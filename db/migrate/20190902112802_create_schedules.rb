class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.text :name
      t.text :exception

      t.timestamps
    end
  end
end
