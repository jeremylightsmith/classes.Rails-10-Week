class AlbumsController < ApplicationController
  def show
    @album = Album.find(params[:id])
  end
  
  def index
    @albums = Album.find(:all)
    respond_to do |wants|
      wants.html do
        render
      end
      wants.js do
        render :json => @albums.to_json
      end
    end
  end
  
  def new
    @album = Album.new
  end
  
  def create
    @album = Album.create! params[:album]
    redirect_to @album
  end
  
  def edit
    @album = Album.find(params[:id])
  end
  
  def update
    @album = Album.find(params[:id])
    @album.update_attributes params[:album]
    redirect_to @album
  end
  
  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_path
  end
end
