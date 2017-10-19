require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @piglatin = pl.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end

end


# My code below which made a working site that met the requirements but not test specs.

#require_relative 'config/environment'

#class App < Sinatra::Base

  #get '/' do
  #  erb :user_input
#  end

#  post '/piglatinize' do

  #  phrase_from_user = params[:user_phrase]
  #  @phrase_from_user = PigLatinizer.new(phrase_from_user)

#    erb :piglatinize
#  end

#end
