require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ServiceRequestsController do

  # This should return the minimal set of attributes required to create a valid
  # ServiceRequest. As you add validations to ServiceRequest, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ServiceRequestsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all service_requests as @service_requests" do
      service_request = ServiceRequest.create! valid_attributes
      get :index, {}, valid_session
      assigns(:service_requests).should eq([service_request])
    end
  end

  describe "GET show" do
    it "assigns the requested service_request as @service_request" do
      service_request = ServiceRequest.create! valid_attributes
      get :show, {:id => service_request.to_param}, valid_session
      assigns(:service_request).should eq(service_request)
    end
  end

  describe "GET new" do
    it "assigns a new service_request as @service_request" do
      get :new, {}, valid_session
      assigns(:service_request).should be_a_new(ServiceRequest)
    end
  end

  describe "GET edit" do
    it "assigns the requested service_request as @service_request" do
      service_request = ServiceRequest.create! valid_attributes
      get :edit, {:id => service_request.to_param}, valid_session
      assigns(:service_request).should eq(service_request)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ServiceRequest" do
        expect {
          post :create, {:service_request => valid_attributes}, valid_session
        }.to change(ServiceRequest, :count).by(1)
      end

      it "assigns a newly created service_request as @service_request" do
        post :create, {:service_request => valid_attributes}, valid_session
        assigns(:service_request).should be_a(ServiceRequest)
        assigns(:service_request).should be_persisted
      end

      it "redirects to the created service_request" do
        post :create, {:service_request => valid_attributes}, valid_session
        response.should redirect_to(ServiceRequest.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved service_request as @service_request" do
        # Trigger the behavior that occurs when invalid params are submitted
        ServiceRequest.any_instance.stub(:save).and_return(false)
        post :create, {:service_request => {}}, valid_session
        assigns(:service_request).should be_a_new(ServiceRequest)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ServiceRequest.any_instance.stub(:save).and_return(false)
        post :create, {:service_request => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested service_request" do
        service_request = ServiceRequest.create! valid_attributes
        # Assuming there are no other service_requests in the database, this
        # specifies that the ServiceRequest created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ServiceRequest.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => service_request.to_param, :service_request => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested service_request as @service_request" do
        service_request = ServiceRequest.create! valid_attributes
        put :update, {:id => service_request.to_param, :service_request => valid_attributes}, valid_session
        assigns(:service_request).should eq(service_request)
      end

      it "redirects to the service_request" do
        service_request = ServiceRequest.create! valid_attributes
        put :update, {:id => service_request.to_param, :service_request => valid_attributes}, valid_session
        response.should redirect_to(service_request)
      end
    end

    describe "with invalid params" do
      it "assigns the service_request as @service_request" do
        service_request = ServiceRequest.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ServiceRequest.any_instance.stub(:save).and_return(false)
        put :update, {:id => service_request.to_param, :service_request => {}}, valid_session
        assigns(:service_request).should eq(service_request)
      end

      it "re-renders the 'edit' template" do
        service_request = ServiceRequest.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ServiceRequest.any_instance.stub(:save).and_return(false)
        put :update, {:id => service_request.to_param, :service_request => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested service_request" do
      service_request = ServiceRequest.create! valid_attributes
      expect {
        delete :destroy, {:id => service_request.to_param}, valid_session
      }.to change(ServiceRequest, :count).by(-1)
    end

    it "redirects to the service_requests list" do
      service_request = ServiceRequest.create! valid_attributes
      delete :destroy, {:id => service_request.to_param}, valid_session
      response.should redirect_to(service_requests_url)
    end
  end

end
