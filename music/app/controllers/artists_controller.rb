# this is not the way to write a "good" controller, but is a stub so we can work on the view code
class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end
  
  def index
    @artists = Artist.all
  end
end