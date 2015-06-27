class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :stock, :null => false
      t.references :product, index: true, :null => false, :unique => true
      t.integer :version, :null => false, :default => 1

      t.timestamps
    end
  end
end
