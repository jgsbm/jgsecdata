class Stock < ActiveRecord::Base
  belongs_to :product
  validates :product, uniqueness: true

  include ShowConnectedDatabase
end
