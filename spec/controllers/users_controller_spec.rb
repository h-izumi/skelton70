require 'rails_helper'

RSpec.describe UsersController do
  let(:operator){ create(:example_user) }

  before do
    sign_in operator
  end

  let(:valid_params) {
    {
      user: {
        name: 'Alice', email: 'alice@example.jp',
        password: 'password', password_confirmation: 'password'
      }
    }
  }

  describe 'GET #index' do
    it 'assigns users to @users' do
      create(:user)

      get :index

      expect(assigns(:users).size).to eq 2
    end
  end

  describe 'GET #show' do
    let(:user) { create(:user) }

    it 'assigns user to @user' do
      get :show, params: { id: user }

      expect(assigns(:user)).to eq user
    end
  end

  describe 'GET #new' do
    it 'assigns new user to @user' do
      get :new

      expect(assigns(:user)).to be_an_instance_of User
    end
  end

  describe 'GET #edit' do
    let(:user) { create(:user) }

    it 'assigns user to @user' do
      get :edit, params: { id: user }

      expect(assigns(:user)).to eq user
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates user and assigns it to @user' do
        expect { post :create, params: valid_params }.to change(User, :count).by(1)

        user = User.last
        expect(user.name).to eq 'Alice'
        expect(user.email).to eq 'alice@example.jp'
      end
    end

    context 'without vaild params' do
      it 'does not create user' do
        expect {
          post :create, params: { user: { name: '' } }
        }.not_to change(User, :count)
      end
    end
  end

  describe 'PATCH #update' do
    let!(:user) { create(:user) }

    context('with valid params') do
      it 'updates user' do
        expect {
          patch :update, params: { id: user, user: { name: 'Bob' } }
          user.reload
        }.to change(user, :name).from('Alice').to('Bob')
      end
    end

    context 'with invalid params' do
      it 'does not update user' do
        expect {
          patch :update, params: { id: user, user: { name: '' } }
          user.reload
        }.not_to change(user, :name)
      end
    end
  end

  describe 'DELETE #destroy' do
    let!(:user) { create(:user) }

    it 'deletes user' do
      expect {
        delete :destroy, params: { id: user }
      }.to change(User, :count).by(-1)
    end
  end
end
