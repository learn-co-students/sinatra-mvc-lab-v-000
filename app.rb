require_relative 'config/environment'
require_relative 'models/pig_latinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pigger = PigLatinizer.new
    @piggify = pigger.piglatinize(params[:user_phrase])

    erb :piglatinize
  end
end
