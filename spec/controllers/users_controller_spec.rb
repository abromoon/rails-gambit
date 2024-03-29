require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  set(:user){ create(:user) }

  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end

