class CreateStorageInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :storage_infos do |t|
      t.string :href, limit: 40
      t.string :cover_href, limit: 40
      t.timestamps
    end
  end
end
