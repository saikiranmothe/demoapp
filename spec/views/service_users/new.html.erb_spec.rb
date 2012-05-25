require 'spec_helper'

describe "service_users/new" do
  before(:each) do
    assign(:service_user, stub_model(ServiceUser,
      :name => "MyString",
      :role => "MyString"
    ).as_new_record)
  end

  it "renders new service_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => service_users_path, :method => "post" do
      assert_select "input#service_user_name", :name => "service_user[name]"
      assert_select "input#service_user_role", :name => "service_user[role]"
    end
  end
end
