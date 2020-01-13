class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  def new
  end

  def create
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
