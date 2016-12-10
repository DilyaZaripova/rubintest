require 'rails_helper'

RSpec.describe "halls/show", type: :view do
  before(:each) do
    @hall = assign(:hall, Hall.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
