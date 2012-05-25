require 'spec_helper'

describe "service_users/show" do
  before(:each) do
    @service_user = assign(:service_user, stub_model(ServiceUser,
      :name => "Name",
      :role => "Role"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Role/)
  end
end
