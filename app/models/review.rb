class Review < ActiveRecord::Base

  @@data_source = 'Bluemix SQL Database'

  def self.data_source
    @@data_source
  end

  unless ENV['CLOUD_DATABASE_HOST'] == nil
    establish_connection(
      :adapter  => 'ibm_db',
      :host     => ENV['CLOUD_DATABASE_HOST'],
      :port     => ENV['CLOUD_DATABASE_PORT'],
      :database => ENV['CLOUD_DATABASE_NAME'],
      :username => ENV['CLOUD_DATABASE_USER'],
      :password => ENV['CLOUD_DATABASE_PASS']
    )
    @@data_source = 'Onpremiss database'
  end

  after_commit do
    cache = BluemixDatacache::Client.new("#{self.class.name}.LUT")
    cache.insert(self.product_code, self.attributes.to_json, 'application/json')
  end

  belongs_to :customer

end
