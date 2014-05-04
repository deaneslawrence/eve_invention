require 'spec_helper'

describe "blueprints/edit" do
  before(:each) do
    @blueprint = assign(:blueprint, stub_model(Blueprint,
      :name => "MyString"
    ))
  end

  it "renders the edit blueprint form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", blueprint_path(@blueprint), "post" do
      assert_select "input#blueprint_name[name=?]", "blueprint[name]"
    end
  end
end
