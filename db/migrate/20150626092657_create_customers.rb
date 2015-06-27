class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_name, :limit => 30, :null => false
      t.string :address, :limit => 255, :null => false
      t.string :tel, :limit => 11, :null => false
      t.string :hashed_password, :limit => 128, :null => false
      t.string :email, :limit => 256, :null => false
      t.integer :version, :null => false, :default => 1

      t.timestamps
    end
    add_index :customers, :email, :unique => true
  end
end
