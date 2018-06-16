require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
   erb :user_input
 end

 post '/piglatinize' do
  #  @piglatinized_text = PigLatinizer.new(params[:user_phrase])
    @piglatinized_text = PigLatinizer.new
    "#{@piglatinized_text.piglatinize(params[:user_phrase])}"
    # "#{@piglatinized_text}"
  # "#{params[:user_phrase]}"
 end
end
