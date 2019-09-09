require_relative './config/environment'
require 'pry'
class App < Sinatra::Base
  
  enable :sessions 
  set :session_secret, "secret"
  
  get '/' do 
    erb :index 
  end 

  post '/checkout' do 
    binding.pry 
    @session = params[:item] 
  end 

end