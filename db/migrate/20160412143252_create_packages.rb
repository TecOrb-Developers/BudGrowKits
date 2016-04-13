class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.string :sku
      t.string :price
      t.string :list_price
      t.string :reviews
      t.string :ratings
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
