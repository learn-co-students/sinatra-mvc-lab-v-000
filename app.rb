require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  # post '/' do
  #   @piglatinized = PigLatinizer.new
  #   erb :latinized
  # end

  post '/piglatinize' do
    @piglatinized = PigLatinizer.new
    erb :latinized
  end
end
