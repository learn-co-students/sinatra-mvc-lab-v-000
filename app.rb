require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @analyzed_text = PigLatinizer.new
    @pig = @analyzed_text.piglatinize(params[:user_phrase])
    erb :piglatinize
  end
  
end