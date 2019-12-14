class AddValidFromToLiqour < ActiveRecord::Migration[5.2]
  def change
    add_column :liqours, :valid_from, :date
  end
end
