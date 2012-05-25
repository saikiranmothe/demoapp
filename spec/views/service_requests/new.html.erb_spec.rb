require 'spec_helper'

describe "service_requests/new" do
  before(:each) do
    assign(:service_request, stub_model(ServiceRequest,
      :service_name => "MyString",
      :serivce_type => "MyString",
      :status => "MyString",
      :street_number => "MyString",
      :street_direction => "MyString",
      :city => "MyString",
      :zip => "MyString",
      :country => "MyString"
    ).as_new_record)
  end

  it "renders new service_request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => service_requests_path, :method => "post" do
      assert_select "input#service_request_service_name", :name => "service_request[service_name]"
      assert_select "input#service_request_serivce_type", :name => "service_request[serivce_type]"
      assert_select "input#service_request_status", :name => "service_request[status]"
      assert_select "input#service_request_street_number", :name => "service_request[street_number]"
      assert_select "input#service_request_street_direction", :name => "service_request[street_direction]"
      assert_select "input#service_request_city", :name => "service_request[city]"
      assert_select "input#service_request_zip", :name => "service_request[zip]"
      assert_select "input#service_request_country", :name => "service_request[country]"
    end
  end
end
