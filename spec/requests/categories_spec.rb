require 'rails_helper'

RSpec.describe "Categories", type: :request do
  describe "GET /categories" do
    it "works!" do
      get categories_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /index" do
    it "renders a successful response" do
      Category.create!(name: "Test Name")
      get categories_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      category = Category.create!(name: "Test Name") 
      get category_url(category)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_category_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      category = Category.create!(name: "Test Name")
      get edit_category_url(category)
      expect(response).to be_successful
    end
  end

end
