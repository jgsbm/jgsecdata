class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :evaluation
      t.string :comment
      t.string :product_code
      t.references :customer, index: true
      t.integer :version

      t.timestamps
    end
  end
end
