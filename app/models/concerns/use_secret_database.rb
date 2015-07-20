module UseSecretDatabase
  extend ActiveSupport::Concern

  included do
    vcap = Cfenv.services('user-provided')
    begin
      unless vcap == nil
        cred = vcap[0].credentials
        establish_connection(
          :adapter  => 'ibm_db',
          :host     => cred.host,
          :port     => cred.port,
          :database => cred.database,
          :username => cred.username,
          :password => cred.password
        )
        @@data_source = 'Onpremiss database'
      end
    rescue
      p "Onpremiss database is not found"
    end
  end
end
