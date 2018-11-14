class SongController < ApplicationController
  
  def index
    @list_genre = Genre.all
    @list_song = if params[:term]
      Song.where('song_name LIKE ?', "%#{params[:term]}%").page(params[:page]).per(8)
    else
      Song.order(:song_name).page(params[:page]).per(8)
    end



      # Song.order(:song_name).page(params[:page]).per(8)

    # search
    def task_params
      params.require(:list_song).permit(:song_name, :genre, :popularity, :album)
    end

     
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
    @song = Song.where('popularity < 9').page(params[:page]).per(8)
  end




end
