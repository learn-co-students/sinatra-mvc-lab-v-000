class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    @translator = PigLatinizer.new
    @user_phrase = params[:user_phrase]

    erb :piglatinize
  end
end
