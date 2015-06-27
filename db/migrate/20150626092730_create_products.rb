class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_code, :limit => 10, :null => false
      t.string :product_name, :limit => 50
      t.decimal :price, :precision => 6, :scale => 2
      t.string :detail, :limit => 200
      t.integer :version, :null => false, :default => 1

      t.timestamps
    end
    add_index :products, :product_code, :unique => true
  end
end
