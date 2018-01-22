require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post "/piglatinize" do
    analyzed_user_input = PigLatinizer.new
    @user_phrase = analyzed_user_input.piglatinize(params[:user_phrase])


    erb :results
  end
end
