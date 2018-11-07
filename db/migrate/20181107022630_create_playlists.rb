class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.references :gig, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
