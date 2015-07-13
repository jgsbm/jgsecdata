class Creditcard < ActiveRecord::Base
  belongs_to :customer
  
  include ShowConnectedDatabase
  include UseSecretDatabase
end
