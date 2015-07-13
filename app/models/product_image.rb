class ProductImage < ActiveRecord::Base
  belongs_to :product

  include ShowConnectedDatabase
end
