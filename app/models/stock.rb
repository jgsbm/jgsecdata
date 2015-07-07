class Stock < ActiveRecord::Base

  @@data_source = 'Bluemix SQL Database'

  def self.data_source
    @@data_source
  end

  belongs_to :product
  validates :product, uniqueness: true
end
