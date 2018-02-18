require './environment'
require_relative 'app/models/pirate'
require_relative 'app/models/ship'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :root
    end
    
    get '/new' do 
      erb :'pirates/new'
    end
    
    post '/pirates' do 
      binding.pry
      @pirate = Pirate.new(params[:pirate])
      puts = params[:pirate][:ships]
      
      
      erb :'pirates/show'
      
    end
    
  end
end
