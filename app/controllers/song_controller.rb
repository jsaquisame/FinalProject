class SongController < ApplicationController
  
  def index
    @list_genre = Genre.all
    @list_song = Song.order(:song_name).page(params[:page]).per(8)
  end
  
  def show
    @show_song = Song.find(params[:id])
  end

  def genre
    @list_genre = Genre.all
    @song = Song.all
  end

  def popularity
    @song_list = Song.order("popularity")
    @song = Song.all
  end


end
