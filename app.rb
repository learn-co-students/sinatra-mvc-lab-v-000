require_relative 'config/environment'

class App < Sinatra::Base

  get "/"  do
    erb :user_input
  end

  post "/piglatinize" do
    @test = PigLatinizer.new(params[:user_phrase])

    erb :piglatin
  end

  # get "/piglatinize" do
  #
  #   erb :piglatin
  # end


end
