require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb:user_input
  end

  post '/pigged' do
    @analyzed_text = PigLatinizer.new
    @analyzed_text.word = (params[:user_text])
    binding.pry

    erb:pigged
end


end
