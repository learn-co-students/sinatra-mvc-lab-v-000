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

end
