class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.references :customer, index: true
      t.references :product, index: true
      t.references :creditcard, index: true
      t.integer :amount

      t.timestamps
    end
  end
end
