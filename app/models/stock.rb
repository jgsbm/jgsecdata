class Stock < ActiveRecord::Base
  belongs_to :product
  validates :product, uniqueness: true

  def self.data_source
    'Bluemix SQL Database'
  end
end
