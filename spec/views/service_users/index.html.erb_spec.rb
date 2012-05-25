require 'spec_helper'

describe "service_users/index" do
  before(:each) do
    assign(:service_users, [
      stub_model(ServiceUser,
        :name => "Name",
        :role => "Role"
      ),
      stub_model(ServiceUser,
        :name => "Name",
        :role => "Role"
      )
    ])
  end

  it "renders a list of service_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
  end
end
