require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'can create category' do
    Category.create(name: "Test Name")
    expect(Category.count).to eq 1
    end
  
    it 'can show category' do
    expect(Category.find_by_name("Test Name")).to eq(@category)
    end
  
    it 'can update category' do
    Category.update(name: "Updated Name")
    expect(Category.find_by_name("Updated Name")).to eq(@category)
    end
end
