require 'rails_helper'

RSpec.describe "categories/index.html.erb", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        name: "Test Name"
      ),
      Category.create!(
        name: "Test Name"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", text: "Test Name".to_s, count: 2
  end
end
