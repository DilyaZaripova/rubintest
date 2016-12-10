require 'rails_helper'

RSpec.describe "seances/show", type: :view do
  before(:each) do
    @seance = assign(:seance, Seance.create!(
      :hall_id => 2,
      :movie_id => 3,
      :price => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
