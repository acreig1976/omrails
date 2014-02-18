require 'spec_helper'

describe RelationshipsController do
  let(:current_user) { Fabricate(:user) }
  let(:user) { Fabricate(:user, email: 'test1@example.com') }
  before { ApplicationController.any_instance.stub(:current_user).and_return(current_user) }

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'saves a new relationship to the database' do
        expect { post :create, relationship: Fabricate.attributes_for(:relationship) }.to change(Relationship, :count).by(1)
      end
      it 'redirects to the home page' do
        post :create, relationship: Fabricate.attributes_for(:relationship)
        response.should redirect_to root_path
      end
    end

    context 'with invalid attributes' do
      it 'does not save a new relationship' do
        expect { post :create, relationship: Fabricate.attributes_for(:invalid_relationship) }.to change(Relationship, :count).by(0)
      end
      it 're-renders the users:show page' do
        post :create, relationship: Fabricate.attributes_for(:invalid_relationship)
        response.should render_template 'users/show'
      end
    end
  end
end
