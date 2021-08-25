require 'rails_helper'

RSpec.describe BooksController do
  describe "GET /index" do
    it 'needs to show index template' do
      get :index
      expect(response).to render_template("index")  
    end   
  end
end
