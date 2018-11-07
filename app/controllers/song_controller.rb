class SongController < ApplicationController
  def index
    @list_song = Song.all
  end

  def show
    @show_band_member = BandMember.find(params[:id])
  end
end
