require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/goataramaicize' do
    @goataramaic = GoatAramaicizer.new.to_goat_aramaic(params[:user_phrase])
    erb :outcome
  end

end
