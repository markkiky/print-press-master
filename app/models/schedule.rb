class Schedule < ApplicationRecord
  has_many :liqours

  def self.upload(file)
    records = CSV.foreach(file.path, headers: true, :encoding => 'ISO-8859-1').map { |row|
    Hash[name: row[0], exception: row[1]]}
      Schedule.import records
  end

end
