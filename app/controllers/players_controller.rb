class PlayersController < ApplicationController

  def index 
    players = Player.all
    render :json => players.as_json(except:[:created_at, :updated_at])
  end

  def show
    player = Player.find( params[:id])
    render :json => player
  end

end