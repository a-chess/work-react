require 'rails_helper'

RSpec.describe "Users", type: :request do
  include Committee::Test::Methods
  include Rack::Test::Methods

  def committee_schema
    @committee_schema ||=
      begin
        driver = Committee::Drivers::OpenAPI2.new
        schema = JSON.parse(YAML::load(File.read(schema_path)).to_json)
        driver.parse(schema)
      end
  end

  def schema_path
    Rails.root.join('docs','schema','schema.yaml') 
  end

  before do
    create_list(:user, 3)
  end
  describe "GET /users" do
    subject { get '/api/v1/users' }

    it 'response schema is correct' do
      subject
      assert_schema_conform
    end
  end

  describe "GET /users:id" do
    let(:user) { User.first }
    it "response success" do
      get "/api/v1/users/#{user.id}"
      assert_schema_conform
    end
  end
end
