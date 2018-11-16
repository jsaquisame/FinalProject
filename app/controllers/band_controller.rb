class BandController < ApplicationController
  def index
    @band_list = Band.order(:band_name)
  end

  def show
    @band = Band.order(:band_name)
  end
end
