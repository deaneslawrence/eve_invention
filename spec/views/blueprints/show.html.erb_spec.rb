require 'spec_helper'

describe "blueprints/show" do
  before(:each) do
    @blueprint = assign(:blueprint, stub_model(Blueprint,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
