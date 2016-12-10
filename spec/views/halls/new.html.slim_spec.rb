require 'rails_helper'

RSpec.describe "halls/new", type: :view do
  before(:each) do
    assign(:hall, Hall.new(
      :name => "MyString"
    ))
  end

  it "renders new hall form" do
    render

    assert_select "form[action=?][method=?]", halls_path, "post" do

      assert_select "input#hall_name[name=?]", "hall[name]"
    end
  end
end
