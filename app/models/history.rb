class History < ActiveRecord::Base
  belongs_to :customer
  belongs_to :product
  belongs_to :creditcard
end
