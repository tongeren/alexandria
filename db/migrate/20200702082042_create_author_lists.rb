class CreateAuthorLists < ActiveRecord::Migration[6.0]
  def change
    create_table :author_lists do |t|
      t.bigint      author_id,    foreign_key: true
      t.timestamps
    end
  end
end
