require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @analyzer = PigLatinizer.new #There is no argument being passed, hence only creation of instance of the class
    # @analyzer.to_pig_latin(params[:user_phrase]) - code that will carry out the translation in the results page
    erb :results
  end
end
