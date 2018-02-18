require './environment'
require_all 'app/models/pirate'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :root
    end
    
    get '/new' do 
      erb :'pirates/new'
    end
    
    post '/pirates' do 
      erb :'pirates/show'
    end
    
  end
end
