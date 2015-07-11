class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :evaluation, :null => false
      t.string :comment
      t.string :product_code, :null => false
      t.references :customer, index: true, :null => false
      t.integer :version, :null => false

      t.timestamps
    end
  end
end
