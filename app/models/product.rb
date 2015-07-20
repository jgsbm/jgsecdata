class Product < ActiveRecord::Base
  def self.data_source
    'Bluemix SQL Database'
  end
end
