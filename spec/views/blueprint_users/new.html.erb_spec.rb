require 'spec_helper'

describe "blueprint_users/new" do
  before(:each) do
    assign(:blueprint_user, stub_model(BlueprintUser,
      :blueprint_id => 1,
      :user_id => 1,
      :preferred_decryptor => 1
    ).as_new_record)
  end

  it "renders new blueprint_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", blueprint_users_path, "post" do
      assert_select "input#blueprint_user_blueprint_id[name=?]", "blueprint_user[blueprint_id]"
      assert_select "input#blueprint_user_user_id[name=?]", "blueprint_user[user_id]"
      assert_select "input#blueprint_user_preferred_decryptor[name=?]", "blueprint_user[preferred_decryptor]"
    end
  end
end
