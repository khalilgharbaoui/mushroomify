require 'rails_helper'

RSpec.describe "mushrooms/show", type: :view do
  before(:each) do
    @mushroom = assign(:mushroom, Mushroom.create!(
      :identifier => "Identifier",
      :eadible => 2,
      :cap_shape => 3,
      :cap_surface => 4,
      :cap_color => 5,
      :bruiser => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Identifier/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end
