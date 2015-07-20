class Creditcard < ActiveRecord::Base
  belongs_to :customer

  include UseSecretDatabase

  def self.data_source
    'Onpremiss database'
  end
end
