class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :isbn_13, null: false
      t.string :isbn_10, null: false
      t.string :image_url
      t.string :edition
      t.integer :publication_year, null: false
      t.decimal :price, precision: 8, scale: 2, default: 0
      t.references :publisher, foreign_key: true, null: false
      t.timestamps
    end
  end
end
