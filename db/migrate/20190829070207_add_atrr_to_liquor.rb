class AddAtrrToLiquor < ActiveRecord::Migration[5.2]
  def change
    add_column :liqours, :physical_address, :string
    add_column :liqours, :plot_number, :string
  end
end
