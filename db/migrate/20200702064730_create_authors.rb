class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string        :first_name,    limit: 40
      t.string        :surname,       limit: 40
      t.timestamps
    end
  end
end
