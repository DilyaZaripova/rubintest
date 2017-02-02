require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :user_id => 1,
      :image_id => 1,
      :genre_id => 1,
      :name => "MyString",
      :author => "MyString",
      :description => "MyString",
      :release => 1
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input#book_user_id[name=?]", "book[user_id]"

      assert_select "input#book_image_id[name=?]", "book[image_id]"

      assert_select "input#book_genre_id[name=?]", "book[genre_id]"

      assert_select "input#book_name[name=?]", "book[name]"

      assert_select "input#book_author[name=?]", "book[author]"

      assert_select "input#book_description[name=?]", "book[description]"

      assert_select "input#book_release[name=?]", "book[release]"
    end
  end
end
