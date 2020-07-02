class CreateLibraries < ActiveRecord::Migration[6.0]
  def change
    create_table :libraries do |t|
      t.string      :name,          limit: 40,    unique: true
      t.bigint      :owner_userid
      t.bigint      :book_id,                     foreign_key: true
      t.timestamps
    end
  end
end
