require 'spec_helper'

describe "service_requests/show" do
  before(:each) do
    @service_request = assign(:service_request, stub_model(ServiceRequest,
      :service_name => "Service Name",
      :serivce_type => "Serivce Type",
      :status => "Status",
      :street_number => "Street Number",
      :street_direction => "Street Direction",
      :city => "City",
      :zip => "Zip",
      :country => "Country"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Service Name/)
    rendered.should match(/Serivce Type/)
    rendered.should match(/Status/)
    rendered.should match(/Street Number/)
    rendered.should match(/Street Direction/)
    rendered.should match(/City/)
    rendered.should match(/Zip/)
    rendered.should match(/Country/)
  end
end
