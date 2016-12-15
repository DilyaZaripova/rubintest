require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :user_id => 2,
      :image_id => 3,
      :genre_id => 4,
      :name => "Name",
      :author => "Author",
      :description => "Description",
      :release => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/5/)
  end
end
