require 'rails_helper'

RSpec.describe "categories/edit.html.erb", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      name: "Test Name"
    ))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "input[name=?]", "category[name]"
    end
  end
end
