describe "Pig Latinizer App" do
  describe "GET '/'" do
    before(:each) do
      get '/'
    end

    it "returns a 200 status code" do
      expect(last_response.status).to eq(200)
    end

    it "renders the instructions" do
      expect(last_response.body).to include("Pig Latinizer!")
    end

    it "renders a new form element on the page" do
      expect(last_response.body).to include("<form")
      expect(last_response.body).to include("</form>")
    end

    it "renders the form directions on the page" do
      expect(last_response.body).to include("Enter your phrase:")
    end

    it "renders the input field for the phrase" do
      expect(last_response.body).to include("user_phrase")
    end

  end

  describe "POST '/piglatinize'" do
    before do
      post '/piglatinize', {
        "user_phrase"=> "Once upon a time and a very good time it was there was a moocow coming down along the road and this moocow that was coming down along the road met a nicens little boy named baby tuckoo."
      }
    end

    it "returns a 200 status code" do
      expect(last_response.status).to eq(200)
    end

    it "displays the pig latinized phrase upon form submission" do
      expect(last_response.body).to include("eOncay uponay a imetay and a eryvay oodgay imetay itay asway erethay asway a oocowmay omingcay ownday alongay ethay oadray and isthay oocowmay atthay asway omingcay ownday alongay ethay oadray etmay a icensnay ittlelay oybay amednay abybay uckootay")
    end
  end

  describe "POST '/piglatinize' again" do
    before do
      post '/piglatinize', {
        "user_phrase"=> "He was an old man who fished alone in a skiff in the Gulf Stream and he had gone eighty four days now without taking a fish"
      }
    end

    it "returns a 200 status code" do
      expect(last_response.status).to eq(200)
    end

    it "displays the pig latinized phrase upon form submission" do
      expect(last_response.body).to include("eHay asway an olday anmay owhay ishedfay aloneay in a iffskay in ethay ulfGay eamStray and ehay adhay onegay eightyay ourfay aysday ownay ithoutway akingtay a ishfay")
    end
  end
end