require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @latinizer = PigLatinizer.new
    @latin_text = @latinizer.piglatinize(params[:user_phrase])
    erb :piglatinized
  end
end
