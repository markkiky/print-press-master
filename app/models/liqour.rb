class Liqour < ApplicationRecord

  def self.upload(file)
    records = CSV.foreach(file.path, headers: true, :encoding => 'ISO-8859-1').map { |row|
    Hash[serial_number: row[0], control_number: row[1], business_name: row[2],
    bid_number: row[3], lid: row[4], licence_type: row[5], type_of_license: row[6],
    amount: row[7], date_paid: row[8], exceptions: row[9], physical_address: row[10],
    plot_number: row[11]]}
    until records.count < 1 do
      r = records.shift(1000)
      Liqour.import r
    end
  end

  def self.uploadb(file)
    records = CSV.foreach(file.path, headers: true, :encoding => 'ISO-8859-1').map { |row|
    @last_permit = Liqour.last
    Hash[serial_number: @last_permit.serial_number.to_i + 1, control_number: @last_permit.control_number.to_i + 1, business_name: row[2],
    bid_number: row[3], lid: @last_permit.lid.to_i + 1, licence_type: row[5], type_of_license: row[6],
    amount: row[7], date_paid: row[8], exceptions: row[9], physical_address: row[10],
    plot_number: row[11]]}
    until records.count < 1 do
      r = records.shift(1000)
      Liqour.import r
    end
  end

end
