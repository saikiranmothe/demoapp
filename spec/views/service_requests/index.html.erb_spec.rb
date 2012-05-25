require 'spec_helper'

describe "service_requests/index" do
  before(:each) do
    assign(:service_requests, [
      stub_model(ServiceRequest,
        :service_name => "Service Name",
        :serivce_type => "Serivce Type",
        :status => "Status",
        :street_number => "Street Number",
        :street_direction => "Street Direction",
        :city => "City",
        :zip => "Zip",
        :country => "Country"
      ),
      stub_model(ServiceRequest,
        :service_name => "Service Name",
        :serivce_type => "Serivce Type",
        :status => "Status",
        :street_number => "Street Number",
        :street_direction => "Street Direction",
        :city => "City",
        :zip => "Zip",
        :country => "Country"
      )
    ])
  end

  it "renders a list of service_requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Service Name".to_s, :count => 2
    assert_select "tr>td", :text => "Serivce Type".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Street Number".to_s, :count => 2
    assert_select "tr>td", :text => "Street Direction".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
  end
end
