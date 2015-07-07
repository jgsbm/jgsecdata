class Product < ActiveRecord::Base

  @@data_source = 'Bluemix SQL Database'

  def self.data_source
    @@data_source
  end

end
