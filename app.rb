require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb:user_input
  end

  post '/pigged' do
    @analyzed_text = PigLatinizer.new(params[:user_text])
    "this is hard coded: #{params[:user_text]}"
    @analyzed_text.pig_it


    #erb:pigged
end


end
