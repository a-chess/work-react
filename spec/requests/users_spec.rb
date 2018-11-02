require 'rails_helper'

RSpec.describe "Users", type: :request do
  before do
    create_list(:user, 3)
  end
  describe "GET /users" do
    it "success" do
      get '/api/v1/users'
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /users:id" do
    let(:user) { User.first }
    it "success" do
      get "/api/v1/users/#{user.id}"
      expect(response).to have_http_status(200)
    end
  end
end
