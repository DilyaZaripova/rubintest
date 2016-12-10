require 'rails_helper'

RSpec.describe "halls/index", type: :view do
  before(:each) do
    assign(:halls, [
      Hall.create!(
        :name => "Name"
      ),
      Hall.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of halls" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
