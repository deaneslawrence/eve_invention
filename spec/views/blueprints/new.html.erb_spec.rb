require 'spec_helper'

describe "blueprints/new" do
  before(:each) do
    assign(:blueprint, stub_model(Blueprint,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new blueprint form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", blueprints_path, "post" do
      assert_select "input#blueprint_name[name=?]", "blueprint[name]"
    end
  end
end
