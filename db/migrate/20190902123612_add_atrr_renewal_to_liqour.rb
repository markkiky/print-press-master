class AddAtrrRenewalToLiqour < ActiveRecord::Migration[5.2]
  def change
    add_column :liqours, :is_renewal, :boolean, :default => false
  end
end
