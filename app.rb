require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    p_l = PigLatinizer.new
    p_l.to_pig_latin(params[:user_phrase])
  end
end
