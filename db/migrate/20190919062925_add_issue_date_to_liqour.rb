class AddIssueDateToLiqour < ActiveRecord::Migration[5.2]
  def change
    add_column :liqours, :issue_date, :date
  end
end
