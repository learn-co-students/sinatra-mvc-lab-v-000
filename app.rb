require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # binding.pry
    @latinizer = PigLatinizer.new #(params[:user_phrase])
    # @latinizer.to_pig_latin(params[:user_phrase])
    erb :results
  end
end