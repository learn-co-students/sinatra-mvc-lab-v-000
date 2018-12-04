require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post "/piglatinize" do

    @pig_latin_string = PigLatinizer.new
    @words = (params[:user_phrase])
    erb :display_results

  end
end
