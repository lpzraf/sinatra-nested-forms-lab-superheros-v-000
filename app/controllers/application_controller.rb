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
        @member1 = params[:team][:name],params[:team][:motto]
        @member2 =
        @member3 = 
  
      erb :team
    end
end
