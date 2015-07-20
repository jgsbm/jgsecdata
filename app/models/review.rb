class Review < ActiveRecord::Base
  belongs_to :customer

  include UseSecretDatabase

  def self.data_source
    'Onpremiss database'
  end

  after_commit do
    cache = BluemixDatacache::Client.new("JGS.NONE")
    product_reviews = self.class.where(:product_code => self.product_code).to_json
    cache.insert(self.product_code, product_reviews, 'application/json')
  end
end
