require 'spec_helper'

describe "ServiceRequests" do
  describe "GET /service_requests" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get service_requests_path
      response.status.should be(200)
    end
  end
end
