require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :eve_key => "Eve Key",
        :email => "Email"
      ),
      stub_model(User,
        :eve_key => "Eve Key",
        :email => "Email"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Eve Key".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
