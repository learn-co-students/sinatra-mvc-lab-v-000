require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post "/piglatinize" do
    @transformed_words = PigLatinizer.new
    @user_input = params[:user_phrase]
    erb :results
  end
end
