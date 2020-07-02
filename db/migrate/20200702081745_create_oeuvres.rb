class CreateOeuvres < ActiveRecord::Migration[6.0]
  def change
    create_table :oeuvres do |t|
      t.bigint :author_id
      t.bigint :book_id,    :foreign_key: true
      t.timestamps
    end
  end
end
