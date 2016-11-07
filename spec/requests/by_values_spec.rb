require 'rails_helper'

RSpec.describe "ByValues", type: :request do
  describe "GET /by_values" do
    it "works! (now write some real specs)" do
      get by_values_path
      expect(response).to have_http_status(200)
    end
  end
end
