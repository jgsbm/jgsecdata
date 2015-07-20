class Customer < ActiveRecord::Base
  include UseSecretDatabase

  def self.data_source
    'Onpremiss database'
  end
end
