
class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    piglatinize = PigLatinizer.new
    @pig_phrase = piglatinize.to_pig_latin(params[:user_phrase])
    erb :user_output
  end

end
