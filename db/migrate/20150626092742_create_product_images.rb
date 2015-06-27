class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
      t.references :product, index: true, :null => false
      t.binary :pic, :null => false
      t.integer :version, :null => false, :default => 1

      t.timestamps
    end
  end
end
