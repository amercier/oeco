require 'rails_helper'

RSpec.describe Admin::CategoriesController, type: :controller do
  before :each do
    Category.delete_all
  end

  describe 'GET index' do
    it 'assigns @categories' do
      get :index
      expect(assigns(:categories)).to eq([create(:category)])
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end
end
