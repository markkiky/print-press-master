class AddAttrToLiqour < ActiveRecord::Migration[5.2]
  def change
    add_column :liqours, :type_of_license, :string
    add_column :liqours, :exceptions, :text
  end
end
