# frozen_string_literal: true

class CreatePurchasedBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :purchased_books do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
    add_index :purchased_books, %i[user_id book_id], unique: true
  end
end
