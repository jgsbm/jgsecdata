class Customer < ActiveRecord::Base
  include ShowConnectedDatabase
  include UseSecretDatabase
end
