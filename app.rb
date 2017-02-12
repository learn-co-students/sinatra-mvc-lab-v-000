require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  get "/piglatinize" do
    erd :user_input
  end


  post "/piglatinize" do
    params[:user_phrase]
    
    erb :results
  end


end
