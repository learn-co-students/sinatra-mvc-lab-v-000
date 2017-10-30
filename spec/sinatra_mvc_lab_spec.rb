describe "Goat Aramaicizer App" do
  describe "GET '/'" do
    before(:each) do
      get '/'
    end

    it "returns a 200 status code" do
      expect(last_response.status).to eq(200)
    end

    it "renders the instructions" do
      expect(last_response.body).to include("Goat Aramaicizer!")
    end

    it "renders a new form element on the page" do
      expect(last_response.body).to include("<form")
      expect(last_response.body).to include("</form>")
    end

    it "renders the form directions on the page" do
      expect(last_response.body).to include("Please enter your phrase:")
    end

    it "renders the input field for the phrase" do
      expect(last_response.body).to include("user_phrase")
    end

  end

  describe "POST '/goataramaicize'" do
    before do
      post '/goataramaicize', {
        "user_phrase"=> "Once upon a time and a very good time it was there was a moocow coming down along the road and this moocow that was coming down along the road met a nice little boy named baby tuckoo"
      }
    end

    it "returns a 200 status code" do
      expect(last_response.status).to eq(200)
    end

    it "displays the goat aramaicized phrase upon form submission" do
      expect(last_response.body).to include("Oncetasah upontasah atasah imetackh andtasah atasah eryvackh oodgackh imetackh ittasah aswackh erethackh aswackh atasah oocowmackh omingcackh owndackh alongtasah ethackh oadrackh andtasah isthackh oocowmackh atthackh aswackh omingcackh owndackh alongtasah ethackh oadrackh etmackh atasah icenackh ittlelackh oybackh amednackh abybackh uckootackh")
    end
  end

  describe "POST '/goataramaicize' again" do
    before do
      post '/goataramaicize', {
        "user_phrase"=> "He was an old man who fished alone in a skiff in the Gulf Stream and he had gone eighty four days now without taking a fish"
      }
    end

    it "returns a 200 status code" do
      expect(last_response.status).to eq(200)
    end

    it "displays the goat aramaicized phrase upon form submission" do
      expect(last_response.body).to include("eHackh aswackh antasah oldtasah anmackh owhackh ishedfackh alonetasah intasah atasah iffskackh intasah ethackh ulfGackh eamStrackh andtasah ehackh adhackh onegackh eightytasah ourfackh aysdackh ownackh ithoutwackh akingtackh atasah ishfackh")
    end
  end
end
