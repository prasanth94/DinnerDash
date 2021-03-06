require 'rails_helper'

RSpec.describe "line_items/index", type: :view do
  before(:each) do
    assign(:line_items, [
      LineItem.create!(
        :quantity => 2,
        :dish => nil,
        :cart => nil
      ),
      LineItem.create!(
        :quantity => 2,
        :dish => nil,
        :cart => nil
      )
    ])
  end

  it "renders a list of line_items" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
