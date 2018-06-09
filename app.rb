# app.rb

require_relative 'config/environment'
require_relative "models/piglatinizer.rb"


class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  # post '/index.html' do
  #   # string_from_user = params[:user_text]
  #   # @piglatinized_text = PigLatinizer.new(string_from_user)
  #   # erb :user_input
  #
  # end

  post '/piglatinize' do
    # binding.pry
    @output = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    # erb :
  end

end
