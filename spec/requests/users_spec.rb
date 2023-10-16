require 'rails_helper'

RSpec.describe 'Users', type: :request do
  set(:user){ create(:user) }

  describe 'GET /users' do
    it 'returns http success' do
      get '/users'
      expect(response).to have_http_status(:success)
    end
  end
end

