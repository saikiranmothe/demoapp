require 'spec_helper'

describe "service_users/edit" do
  before(:each) do
    @service_user = assign(:service_user, stub_model(ServiceUser,
      :name => "MyString",
      :role => "MyString"
    ))
  end

  it "renders the edit service_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => service_users_path(@service_user), :method => "post" do
      assert_select "input#service_user_name", :name => "service_user[name]"
      assert_select "input#service_user_role", :name => "service_user[role]"
    end
  end
end
