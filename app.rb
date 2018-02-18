require './environment'
require 'views/pirates/new'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :root
    end
    
    get '/new' do 
      erb :new 
    end
    
  end
end
