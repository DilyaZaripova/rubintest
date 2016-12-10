require 'rails_helper'

RSpec.describe "tickets/edit", type: :view do
  before(:each) do
    @ticket = assign(:ticket, Ticket.create!(
      :user_id => 1,
      :seance_id => 1,
      :status_id => 1,
      :number => 1
    ))
  end

  it "renders the edit ticket form" do
    render

    assert_select "form[action=?][method=?]", ticket_path(@ticket), "post" do

      assert_select "input#ticket_user_id[name=?]", "ticket[user_id]"

      assert_select "input#ticket_seance_id[name=?]", "ticket[seance_id]"

      assert_select "input#ticket_status_id[name=?]", "ticket[status_id]"

      assert_select "input#ticket_number[name=?]", "ticket[number]"
    end
  end
end
