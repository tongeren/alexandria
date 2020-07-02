class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.references :title,                         foreign_key: true
      t.references :author_list,                   foreign_key: true   
      t.references :book_identifier,               foreign_key: true 
      t.references :storage_info,                  foreign_key: true
      t.bigint     :pages
      t.string     :publisher,          limit: 40 
      t.timestamps
    end
  end
end
