class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
 
    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      # re-render the :new template WITHOUT throwing away the invalid @song
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
    @songs = Song.all
  end

  def show
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:title)
    end
end
