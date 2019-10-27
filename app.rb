require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/" do

  end

  post "/piglatinize" do
    @new_text = PigLatinizer.new(params[:user_phrase])
    erb :results
  end
end
