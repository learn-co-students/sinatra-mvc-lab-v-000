require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig_Latinizer = PigLatinizer.new
    @phrase = pig_Latinizer.to_pig_latin(params[:user_phrase])
    erb :pig_latinize
  end
end
