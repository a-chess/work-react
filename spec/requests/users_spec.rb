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
      it 'response schema is correct' do
        subject
        assert_schema_conform
      end
    end
  end

  describe 'GET /users/:id/books' do
    subject { get "/api/v1/users/#{user.id}/books" }

    context 'authenticated user' do
      before do
        authenticate user
        create_list(:book, 3).each do |book|
          create(:purchased_book, user: user, book: book)
        end
      end

      let(:user){ User.first }
      
      it 'response success' do
        subject
        expect(last_response.status).to eq 200
      end

      it 'return 3 books' do
        subject
        expect(JSON.parse(last_response.body).length).to eq user.books.count
      end

      it 'response schema is correct' do
        subject
        assert_schema_conform
      end
    end
  end
end
