require 'rails_helper'

RSpec.describe 'Top' do
  describe 'GET /' do
    it 'works.' do
      get '/'
      expect(response).to have_http_status(:ok)
    end
  end
end
