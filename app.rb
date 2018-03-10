require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
      erb :user_input
    end

    post '/piglatinize' do
      ig = PigLatinizer.new
      @igpay_text = ig.to_pig_latin(params[:user_phrase])
      erb :translation
    end

end
