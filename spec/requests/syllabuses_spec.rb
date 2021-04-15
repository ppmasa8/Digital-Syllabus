require 'rails_helper'

RSpec.describe "Syllabuses", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/syllabuses/index"
      expect(response).to have_http_status(:success)
    end
  end

end
