class AddMarkAsPrintedToLiqour < ActiveRecord::Migration[5.2]
  def change
    add_column :liqours, :mark_as_printed, :boolean
  end
end
