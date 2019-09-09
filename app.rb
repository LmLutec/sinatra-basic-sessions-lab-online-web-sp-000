require_relative './config/environment'
require 'pry'
class App < Sinatra::Base
  
  enable :sessions 
  set :session_secret, "item"
  
  get '/' do 
    erb :index 
  end 

  post '/checkout' do 
    @session = params[:item] 
  end 

end