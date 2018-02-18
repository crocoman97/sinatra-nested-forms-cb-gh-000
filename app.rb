require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :root
    end
    
    get '/new' do 
      require_relative 'views/pirates/new'
      erb ':new'
    end
    
  end
end
