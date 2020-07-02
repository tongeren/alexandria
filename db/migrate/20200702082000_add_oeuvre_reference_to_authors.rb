class AddOeuvreReferenceToAuthors < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :oeuvre_id, :bigint 
    add_foreign_key :authors, :oeuvres
  end
end