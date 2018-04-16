require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/translated_phrase' do
    puts params
    pig = PigLatinizer.new
    @phrase = pig.piglatinize(params.values.to_s)
    erb :hrasepay
  end
end
