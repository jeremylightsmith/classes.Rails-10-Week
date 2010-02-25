class TracksController < ApplicationController
  def index
    @tracks = Track.find(:all, :order => params[:order])
    respond_to do |wants|
      wants.html do
        render
      end
      wants.js do
        render :layout => false
      end
    end
  end
  
  def show
    @track = Track.find(params[:id])
  end
  
  def new
    @track = Track.new
  end
  
  def create
    @track = Track.new(params[:track])
    if @track.save
      redirect_to @track
    else
      render :new
    end
  end
  
  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    
    render :update do |page|
      page << "$('#track_#{@track.id}').remove()"
    end
  end
end
