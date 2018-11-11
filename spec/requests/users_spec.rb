require 'rails_helper'

RSpec.describe 'UsersApi', type: :request do
  before do
    create_list(:user, 3)
  end

  describe 'GET /users' do
    subject { get '/api/v1/users' }
    let(:user){ User.first }

    context 'authenticate user' do
      before do
        authenticate user
      end

      it 'response succeed' do
        subject
        expect(last_response.status).to eq 200
      end
  
      it 'response schema is correct' do
        subject
        assert_schema_conform
      end
    end

  end

  describe 'GET /users/:id' do
    subject { get "/api/v1/users/#{user.id}" }

    context 'authenticated user' do
      before do
        authenticate user
      end

      let(:user){ User.first }
      it 'response success' do
        subject
        assert_schema_conform
      end
    end
  end
end
