require 'rails_helper'

RSpec.describe "halls/edit", type: :view do
  before(:each) do
    @hall = assign(:hall, Hall.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit hall form" do
    render

    assert_select "form[action=?][method=?]", hall_path(@hall), "post" do

      assert_select "input#hall_name[name=?]", "hall[name]"
    end
  end
end
