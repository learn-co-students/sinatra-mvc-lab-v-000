require_relative 'config/environment'


class App < Sinatra::Base


  get '/' do

    erb :user_input
  end

  post "/" do
    raise  params.inspect

    erb :user_input
  end

end
