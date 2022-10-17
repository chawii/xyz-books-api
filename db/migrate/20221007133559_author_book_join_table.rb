class AuthorBookJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :authored_books do |t|
      t.integer :author_id, null: false
      t.integer :book_id, null: false
      t.timestamps
    end
  end
end
