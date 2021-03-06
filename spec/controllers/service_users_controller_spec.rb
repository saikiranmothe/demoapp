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

describe ServiceUsersController do

  # This should return the minimal set of attributes required to create a valid
  # ServiceUser. As you add validations to ServiceUser, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ServiceUsersController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all service_users as @service_users" do
      service_user = ServiceUser.create! valid_attributes
      get :index, {}, valid_session
      assigns(:service_users).should eq([service_user])
    end
  end

  describe "GET show" do
    it "assigns the requested service_user as @service_user" do
      service_user = ServiceUser.create! valid_attributes
      get :show, {:id => service_user.to_param}, valid_session
      assigns(:service_user).should eq(service_user)
    end
  end

  describe "GET new" do
    it "assigns a new service_user as @service_user" do
      get :new, {}, valid_session
      assigns(:service_user).should be_a_new(ServiceUser)
    end
  end

  describe "GET edit" do
    it "assigns the requested service_user as @service_user" do
      service_user = ServiceUser.create! valid_attributes
      get :edit, {:id => service_user.to_param}, valid_session
      assigns(:service_user).should eq(service_user)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ServiceUser" do
        expect {
          post :create, {:service_user => valid_attributes}, valid_session
        }.to change(ServiceUser, :count).by(1)
      end

      it "assigns a newly created service_user as @service_user" do
        post :create, {:service_user => valid_attributes}, valid_session
        assigns(:service_user).should be_a(ServiceUser)
        assigns(:service_user).should be_persisted
      end

      it "redirects to the created service_user" do
        post :create, {:service_user => valid_attributes}, valid_session
        response.should redirect_to(ServiceUser.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved service_user as @service_user" do
        # Trigger the behavior that occurs when invalid params are submitted
        ServiceUser.any_instance.stub(:save).and_return(false)
        post :create, {:service_user => {}}, valid_session
        assigns(:service_user).should be_a_new(ServiceUser)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ServiceUser.any_instance.stub(:save).and_return(false)
        post :create, {:service_user => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested service_user" do
        service_user = ServiceUser.create! valid_attributes
        # Assuming there are no other service_users in the database, this
        # specifies that the ServiceUser created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ServiceUser.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => service_user.to_param, :service_user => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested service_user as @service_user" do
        service_user = ServiceUser.create! valid_attributes
        put :update, {:id => service_user.to_param, :service_user => valid_attributes}, valid_session
        assigns(:service_user).should eq(service_user)
      end

      it "redirects to the service_user" do
        service_user = ServiceUser.create! valid_attributes
        put :update, {:id => service_user.to_param, :service_user => valid_attributes}, valid_session
        response.should redirect_to(service_user)
      end
    end

    describe "with invalid params" do
      it "assigns the service_user as @service_user" do
        service_user = ServiceUser.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ServiceUser.any_instance.stub(:save).and_return(false)
        put :update, {:id => service_user.to_param, :service_user => {}}, valid_session
        assigns(:service_user).should eq(service_user)
      end

      it "re-renders the 'edit' template" do
        service_user = ServiceUser.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ServiceUser.any_instance.stub(:save).and_return(false)
        put :update, {:id => service_user.to_param, :service_user => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested service_user" do
      service_user = ServiceUser.create! valid_attributes
      expect {
        delete :destroy, {:id => service_user.to_param}, valid_session
      }.to change(ServiceUser, :count).by(-1)
    end

    it "redirects to the service_users list" do
      service_user = ServiceUser.create! valid_attributes
      delete :destroy, {:id => service_user.to_param}, valid_session
      response.should redirect_to(service_users_url)
    end
  end

end
