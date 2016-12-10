require 'rails_helper'

RSpec.describe "seances/index", type: :view do
  before(:each) do
    assign(:seances, [
      Seance.create!(
        :hall_id => 2,
        :movie_id => 3,
        :price => 4
      ),
      Seance.create!(
        :hall_id => 2,
        :movie_id => 3,
        :price => 4
      )
    ])
  end

  it "renders a list of seances" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
