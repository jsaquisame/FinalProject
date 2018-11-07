class BandMemberController < ApplicationController
  def index
    @list_band_member = BandMember.all
  end

  def show
    @show_band_member = BandMember.find(params[:id])
  end
end
