require 'spec_helper'

describe "blueprints/index" do
  before(:each) do
    assign(:blueprints, [
      stub_model(Blueprint,
        :name => "Name"
      ),
      stub_model(Blueprint,
        :name => "Name"
      )
    ])
  end

  it "renders a list of blueprints" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
