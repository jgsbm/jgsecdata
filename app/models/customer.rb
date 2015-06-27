class Customer < ActiveRecord::Base

  unless ENV['CLOUD_DATABASE_HOST'] == nil
    establish_connection(
      :adapter  => 'ibm_db',
      :host     => ENV['CLOUD_DATABASE_HOST'],
      :port     => ENV['CLOUD_DATABASE_PORT'],
      :database => ENV['CLOUD_DATABASE_NAME'],
      :username => ENV['CLOUD_DATABASE_USER'],
      :password => ENV['CLOUD_DATABASE_PASS']
    )
  end

end
