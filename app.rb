require './environment'
require_relative 'app/models/pirate'
require_relative 'app/models/ship'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :root
    end
    
    get '/new' do 
      erb :'pirates/new'
    end
    
    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
      all_attributes = params[:pirate][:ships]
      all_attributes.each { |attributes| 
        Ship.new(attributes)
      }
      @ships = Ship.all
      erb :'pirates/show'
    end
    
  end
end
