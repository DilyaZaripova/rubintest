require 'rails_helper'

RSpec.describe "seances/new", type: :view do
  before(:each) do
    assign(:seance, Seance.new(
      :hall_id => 1,
      :movie_id => 1,
      :price => 1
    ))
  end

  it "renders new seance form" do
    render

    assert_select "form[action=?][method=?]", seances_path, "post" do

      assert_select "input#seance_hall_id[name=?]", "seance[hall_id]"

      assert_select "input#seance_movie_id[name=?]", "seance[movie_id]"

      assert_select "input#seance_price[name=?]", "seance[price]"
    end
  end
end
