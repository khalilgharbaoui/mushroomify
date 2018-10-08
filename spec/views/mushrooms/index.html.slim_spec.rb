require 'rails_helper'

RSpec.describe "mushrooms/index", type: :view do
  before(:each) do
    assign(:mushrooms, [
      Mushroom.create!(
        :identifier => "Identifier",
        :edible => 2,
        :cap_shape => 3,
        :cap_surface => 4,
        :cap_color => 5,
        :bruiser => 6
      ),
      Mushroom.create!(
        :identifier => "Identifier",
        :edible => 2,
        :cap_shape => 3,
        :cap_surface => 4,
        :cap_color => 5,
        :bruiser => 6
      )
    ])
  end

  it "renders a list of mushrooms" do
    render
    assert_select "tr>td", :text => "Identifier".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
