class CreateTitles < ActiveRecord::Migration[6.0]
  def change
    create_table :titles do |t|
      t.string :title,      limit: 40
      t.string :subtitle,   limit: 40
      t.timestamps
    end
  end
end
