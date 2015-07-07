class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.references :customer, index: true, :null => false
      t.references :product, index: true, :null => false
      t.references :creditcard, index: true
      t.integer :amount, :null => false
      t.string :address

      t.timestamps
    end
  end
end
