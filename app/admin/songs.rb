ActiveAdmin.register Song do
    permit_params :song_name, :song_artist, :popularity, :album, :language, :image, :genre
end
