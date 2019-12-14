class ChangeColumnToDate < ActiveRecord::Migration[5.2]
  def change
    change_column :liqours, :date_paid, :date
  end
end
