class CreateCreditcards < ActiveRecord::Migration
  def change
    create_table :creditcards do |t|
      t.string :creditno, :limit => 96, :null => false
      t.references :customer, index: true, :null => false
      t.integer :version, :null => false, :default => 1

      t.timestamps
    end
  end
end
