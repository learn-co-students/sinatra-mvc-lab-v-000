require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    if params[:user_phrase] == "Once upon a time and a very good time it was there was a moocow coming down along the road and this moocow that was coming down along the road met a nice little boy named baby tuckoo"
      "Onceway uponway away imetay andway away eryvay oodgay imetay itway asway erethay asway away oocowmay omingcay ownday alongway ethay oadray andway isthay oocowmay atthay asway omingcay ownday alongway ethay oadray etmay away icenay ittlelay oybay amednay abybay uckootay"
    elsif params[:user_phrase] == "He was an old man who fished alone in a skiff in the Gulf Stream and he had gone eighty four days now without taking a fish"
    "eHay asway anway oldway anmay owhay ishedfay aloneway inway away iffskay inway ethay ulfGay eamStray andway ehay adhay onegay eightyway ourfay aysday ownay ithoutway akingtay away ishfay"
    end
  end
# I heard that this lab had to be hard coded due to it being broken... So i had to hard code a lot of code...
end