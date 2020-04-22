require 'rails_helper'

describe TasksController do
  describe 'GET #index' do
    it "@taskに正しい値が入っていること" do
      task = create(:task)
      get :edit, params: { id: tweet }
      expect(assigns(:tweet)).to eq tweet
    end

    it "index.html.hamlに遷移すること" do
      get :index
      expect(response).to render_template :index
    end
  end

end