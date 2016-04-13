class CreatePackageImages < ActiveRecord::Migration
  def change
    create_table :package_images do |t|
      t.string :image
      t.references :package, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
