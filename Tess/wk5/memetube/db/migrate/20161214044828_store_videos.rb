class StoreVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :genre

      t.timestamps

    end
  end
end
