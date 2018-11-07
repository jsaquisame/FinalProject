class BandController < ApplicationController
  def index
    @show_band = Band.all
  end

  def show
    @band = Band.find(params[:id])
  end
end
