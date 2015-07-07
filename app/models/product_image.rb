class ProductImage < ActiveRecord::Base

  def self.data_source
    'Bluemix SQL Database'
  end
  
  belongs_to :product
end
