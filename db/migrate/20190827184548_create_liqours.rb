class CreateLiqours < ActiveRecord::Migration[5.2]
  def change
    create_table :liqours do |t|
      t.string :serial_number
      t.string :control_number
      t.string :business_name
      t.string :bid_number
      t.string :lid
      t.string :licence_type
      t.decimal :amount, :precision => 11, :scale => 2
      t.string :date_paid
      t.boolean :printed, :default => false
      t.string :bank_transaction_code

      t.timestamps
    end
  end
end
