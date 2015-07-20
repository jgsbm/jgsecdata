class ProductImage < ActiveRecord::Base
  belongs_to :product

  def self.data_source
    'Bluemix SQL Database'
  end
end
