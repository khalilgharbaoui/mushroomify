require 'rails_helper'

RSpec.describe "mushrooms/new", type: :view do
  before(:each) do
    assign(:mushroom, Mushroom.new(
      :identifier => "MyString",
      :eadible => 1,
      :cap_shape => 1,
      :cap_surface => 1,
      :cap_color => 1,
      :bruiser => 1
    ))
  end

  it "renders new mushroom form" do
    render

    assert_select "form[action=?][method=?]", mushrooms_path, "post" do

      assert_select "input[name=?]", "mushroom[identifier]"

      assert_select "input[name=?]", "mushroom[eadible]"

      assert_select "input[name=?]", "mushroom[cap_shape]"

      assert_select "input[name=?]", "mushroom[cap_surface]"

      assert_select "input[name=?]", "mushroom[cap_color]"

      assert_select "input[name=?]", "mushroom[bruiser]"
    end
  end
end
