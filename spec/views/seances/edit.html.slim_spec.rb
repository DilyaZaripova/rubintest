require 'rails_helper'

RSpec.describe "seances/edit", type: :view do
  before(:each) do
    @seance = assign(:seance, Seance.create!(
      :hall_id => 1,
      :movie_id => 1,
      :price => 1
    ))
  end

  it "renders the edit seance form" do
    render

    assert_select "form[action=?][method=?]", seance_path(@seance), "post" do

      assert_select "input#seance_hall_id[name=?]", "seance[hall_id]"

      assert_select "input#seance_movie_id[name=?]", "seance[movie_id]"

      assert_select "input#seance_price[name=?]", "seance[price]"
    end
  end
end
