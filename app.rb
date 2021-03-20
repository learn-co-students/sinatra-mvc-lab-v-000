require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    # will show the form
    erb :user_input
  end

  post '/piglatinize' do
    @latinized_text = PigLatinizer.new.piglatinize(params[:user_phrase])

    erb :latinized_text
  end

end
