class SponsersController < ApplicationController

  def index 
    sponsers = Sponser.all
    render :json => sponsers.as_json(except:[:created_at, :updated_at])
  end

  def show
    sponser = Sponser.find( params[:id])
    render :json => sponser
  end

end