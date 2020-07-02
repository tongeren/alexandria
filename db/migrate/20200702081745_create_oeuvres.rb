class CreateOeuvres < ActiveRecord::Migration[6.0]
  def change
    create_table :oeuvres do |t|
      t.references   :author,    foreign_key: true
      t.references   :book,      foreign_key: true
      t.timestamps
    end
  end
end
