require 'spec_helper'

describe "blueprint_users/show" do
  before(:each) do
    @blueprint_user = assign(:blueprint_user, stub_model(BlueprintUser,
      :blueprint_id => 1,
      :user_id => 2,
      :preferred_decryptor => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
