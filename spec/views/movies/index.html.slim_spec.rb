require 'rails_helper'

RSpec.describe "movies/index", type: :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
        :name => "Name",
        :genre => "Genre",
        :director => "Director",
        :description => "MyText"
      ),
      Movie.create!(
        :name => "Name",
        :genre => "Genre",
        :director => "Director",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of movies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => "Director".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
