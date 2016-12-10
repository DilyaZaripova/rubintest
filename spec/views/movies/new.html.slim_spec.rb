require 'rails_helper'

RSpec.describe "movies/new", type: :view do
  before(:each) do
    assign(:movie, Movie.new(
      :name => "MyString",
      :genre => "MyString",
      :director => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do

      assert_select "input#movie_name[name=?]", "movie[name]"

      assert_select "input#movie_genre[name=?]", "movie[genre]"

      assert_select "input#movie_director[name=?]", "movie[director]"

      assert_select "textarea#movie_description[name=?]", "movie[description]"
    end
  end
end
