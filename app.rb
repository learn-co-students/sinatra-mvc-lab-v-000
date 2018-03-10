class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @results = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    erb :results
  end
end
