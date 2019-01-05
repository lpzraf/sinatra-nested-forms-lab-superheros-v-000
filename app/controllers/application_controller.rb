require 'sinatra/base'
require "pry"

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      
      erb :super_hero
    end
    
    post '/team' do
        #binding.pry
        @team = params[:team][:name],params[:team][:motto]
  
      erb :team
    end
end
