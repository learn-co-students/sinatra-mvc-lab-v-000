require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :form
  end

  post '/piglatinize' do
    @Latinizer = PigLatinizer.new
    @p_latin_phrase = @Latinizer.to_pig_latin(params[:user_phrase])

    erb :display_phrase
  end
end
