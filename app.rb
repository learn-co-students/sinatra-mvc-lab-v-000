require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end


  post '/piglatinize' do
    @input = params[:user_phrase]
    new_piglatin_object = PigLatinizer.new
    if @input.split.size > 1
      @new_piglatin = new_piglatin_object.to_pig_latin("#{@input}")
    else
      @new_piglatin = new_piglatin_object.piglatinize("#{@input}")
    end
    erb :piglatinize
  end

end
