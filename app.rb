require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/piglatinizer' do
    @analyzed_word = WordAnalyzer.new(params[:user_word])
    erb :results
  end

end
