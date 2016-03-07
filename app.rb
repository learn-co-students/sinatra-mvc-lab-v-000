require_relative 'config/environment'
require_relative './models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do 
    # get user input, pass as argument to new PigLatinize instance
    @piglatinized_text = PigLatinizer.new(params[:user_phrase]) # use @piglatinized_text in the new view
    erb #:something
  end

end