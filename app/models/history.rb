class History < ActiveRecord::Base
  belongs_to :customer
  belongs_to :product
  belongs_to :creditcard

  include UseSecretDatabase

  def self.data_source
    'Onpremiss database'
  end
end
