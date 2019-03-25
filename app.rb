require_relative 'config/environment'

class App < Sinatra::Base

    get '/'  do
      erb :user_input  #/ lleva a la view user_input, donde tengo un form que luego
      #de completar me lleva via el action the form a la pagina piglatinresult.
    end

    post '/piglatinresult' do
       @pl_text = Piglatin.new(params[text])
      erb :piglatinresult
    end


end
