class Stock < ActiveRecord::Base

  def self.data_source
    'Bluemix SQL Database'
  end
  
  belongs_to :product
  validates :product, uniqueness: true
end
