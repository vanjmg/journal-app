require 'rails_helper'

RSpec.describe "categories/show.html.erb", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      name: "Test Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Test Name/)
  end
end
