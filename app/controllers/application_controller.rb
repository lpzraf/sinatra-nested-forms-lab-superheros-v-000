require 'sinatra/base'
require "pry"

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      
      erb :super_hero
    end
    
    post '/teams' do
        @team = Team.new(params[:team][:name],params[:team][:motto])
  
        # @first_ship = Ship.new(params[:pirate][:ships][0])
        # @second_ship = Ship.new(params[:pirate][:ships][1])
      #erb :
    end
end
