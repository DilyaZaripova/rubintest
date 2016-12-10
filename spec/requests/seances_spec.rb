require 'rails_helper'

RSpec.describe "Seances", type: :request do
  describe "GET /seances" do
    it "works! (now write some real specs)" do
      get seances_path
      expect(response).to have_http_status(200)
    end
  end
end
