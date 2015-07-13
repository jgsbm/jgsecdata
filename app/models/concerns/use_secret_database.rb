module UseSecretDatabase
  extend ActiveSupport::Concern

  included do
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
  end
end
