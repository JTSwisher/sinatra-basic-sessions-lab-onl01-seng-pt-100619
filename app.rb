require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do 
    enable :sessions 
    set :session_secret, "thesecret"
  end
  
  get '/' do 
    erb :index
  end 
  
  post '/checkout' do 
    @session = session
    @session << params[:item]
    
    erb :view
  end 
  
end