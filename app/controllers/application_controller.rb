require 'sinatra/base'
require "pry"

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      
      erb :super_hero
    end
    
    post '/teams' do
        #binding.pry
        @team = Team.new(params[:team])
        @heroes = Hero.all
        # @member1 = params[:team][:hero][:name], params[:team][:hero][:power], params[:team][:hero][:biography]
        # @member2 = params[:team][:hero][:name], params[:team][:hero][:power], params[:team][:hero][:biography]
        # @member3 = params[:team][:hero][:name], params[:team][:hero][:power], params[:team][:hero][:biography]
  
      erb :team
    end
end
