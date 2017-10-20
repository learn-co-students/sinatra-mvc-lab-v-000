require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # Create instance var, pointing to new object,
    # Use instance method on the new object,
    # Pass in the form submission field in the argument as received parameters
    @piglatinize = PigLatinizer.new.to_pig_latin(params[:user_phrase])

    erb :piglatinize
  end
end
