class AddScheduleToLiqour < ActiveRecord::Migration[5.2]
  def change
    add_reference :liqours, :schedule, foreign_key: true
  end
end
