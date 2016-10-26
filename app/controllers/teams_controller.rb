class TeamsController < ApplicationController

  def index 
    teams = Team.all
    render :json => players.as_json(except:[:created_at, :updated_at])
  end

  def show
    team = Team.find( params[:id])
    render :json => team
  end

end