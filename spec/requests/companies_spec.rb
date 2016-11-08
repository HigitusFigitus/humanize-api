require 'rails_helper'

RSpec.describe "Companies", type: :request do
  describe "GET /companies" do

    it "returns a successful 200 response" do
      get "/api/v1/companies", format: :json
      expect(response).to have_http_status(200)
    end

    it "returns all the companies" do
      FactoryGirl.create_list(:company, 5)
      get :index, format: :json
      parsed_response = JSON.parse(response.body)
      expect(parsed_response['companies'].length).to eq(5)
    end

  end
end
