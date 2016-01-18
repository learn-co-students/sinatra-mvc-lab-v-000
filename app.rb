class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    asephray = PigLatinizer.new
    "#{asephray.to_pig_latin(params[:user_phrase])}."
  end

end
