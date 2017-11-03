require_relative 'config/environment'
require_relative 'models/piglatinizer'


class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post "/piglatinize" do
    "<center><h3>#{PigLatinizer.new.to_pig_latin(params[:user_phrase])}</h3></center>"
  end

end
