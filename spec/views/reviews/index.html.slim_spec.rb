require 'rails_helper'

RSpec.describe "reviews/index", type: :view do
  before(:each) do
    assign(:reviews, [
      Review.create!(
        :user_id => 2,
        :book_id => 3,
        :text => "Text"
      ),
      Review.create!(
        :user_id => 2,
        :book_id => 3,
        :text => "Text"
      )
    ])
  end

  it "renders a list of reviews" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
