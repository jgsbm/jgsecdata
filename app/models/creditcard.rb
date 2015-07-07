class Creditcard < ActiveRecord::Base

  def self.data_source
    'Bluemix SQL Database'
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
    self.data_source = 'Onpremiss database'
  end

  belongs_to :customer
end
