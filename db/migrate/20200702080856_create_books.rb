class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.bigint :title_id
      t.bigint :author_list_id
      t.bigint :pages 
      t.bigint :book_identifier_id 
      t.bigint :storage_info_id
      t.string :publisher,          :limit: 40 
      t.timestamps
    end
  end
end
