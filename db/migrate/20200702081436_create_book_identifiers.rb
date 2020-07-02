class CreateBookIdentifiers < ActiveRecord::Migration[6.0]
  def change
    create_table :book_identifiers do |t|
      t.bigint :ISBN_10
      t.bigint :ISBN_13
      t.string :ASIN,     :limit: 40
      t.timestamps
    end
  end
end
