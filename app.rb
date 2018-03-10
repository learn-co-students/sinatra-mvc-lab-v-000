require_relative 'config/environment'

require 'pry'

class App < Sinatra::Base

  get '/' do
    # binding.pry
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latinized_text = PigLatinizer.new(params[:user_phrase])
    # binding.pry
    erb :piglatinize
  end

end
