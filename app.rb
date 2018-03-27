require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end


post '/piglatinize' do
  @new_pig_latin = PigLatinizer.new(params[:user_phrase]).piglatinize
  erb :piglatinize
end

end
