require_relative 'config/environment'

class App < Sinatra::Base

    get '/'  do
      erb :user_input  #/ lleva a la view user_input, donde tengo un form que luego
      #de completar me lleva via el action the form a la pagina piglatinresult.
    end

    post '/piglatinize' do
        @pl_text = PigLatinizer.new
       @text = @pl_text.piglatinize(params[:user_phrase])
      erb :piglatinize
    end


end
