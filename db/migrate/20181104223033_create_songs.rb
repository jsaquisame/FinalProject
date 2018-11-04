class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.string :song_artist
      t.integer :popularity
      t.string :album
      t.string :language
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
