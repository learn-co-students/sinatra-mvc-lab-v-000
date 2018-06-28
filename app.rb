require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    @res=PigLatinizer.new
    @res.piglatinize(params[:user_phrase])
  end
end
