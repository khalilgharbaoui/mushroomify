require 'rails_helper'

RSpec.describe "mushrooms/edit", type: :view do
  before(:each) do
    @mushroom = assign(:mushroom, Mushroom.create!(
      :identifier => "MyString",
      :eadible => 1,
      :cap_shape => 1,
      :cap_surface => 1,
      :cap_color => 1,
      :bruiser => 1
    ))
  end

  it "renders the edit mushroom form" do
    render

    assert_select "form[action=?][method=?]", mushroom_path(@mushroom), "post" do

      assert_select "input[name=?]", "mushroom[identifier]"

      assert_select "input[name=?]", "mushroom[eadible]"

      assert_select "input[name=?]", "mushroom[cap_shape]"

      assert_select "input[name=?]", "mushroom[cap_surface]"

      assert_select "input[name=?]", "mushroom[cap_color]"

      assert_select "input[name=?]", "mushroom[bruiser]"
    end
  end
end
