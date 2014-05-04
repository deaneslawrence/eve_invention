require 'spec_helper'

describe "blueprint_users/edit" do
  before(:each) do
    @blueprint_user = assign(:blueprint_user, stub_model(BlueprintUser,
      :blueprint_id => 1,
      :user_id => 1,
      :preferred_decryptor => 1
    ))
  end

  it "renders the edit blueprint_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", blueprint_user_path(@blueprint_user), "post" do
      assert_select "input#blueprint_user_blueprint_id[name=?]", "blueprint_user[blueprint_id]"
      assert_select "input#blueprint_user_user_id[name=?]", "blueprint_user[user_id]"
      assert_select "input#blueprint_user_preferred_decryptor[name=?]", "blueprint_user[preferred_decryptor]"
    end
  end
end
