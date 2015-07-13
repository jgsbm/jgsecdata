module ShowConnectedDatabase
  extend ActiveSupport::Concern

  included do
    @@data_source = 'Bluemix SQL Database'

    def self.data_source
      @@data_source
    end
  end
end
