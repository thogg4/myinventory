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

describe InspectionDetailsController do

  # This should return the minimal set of attributes required to create a valid
  # InspectionDetail. As you add validations to InspectionDetail, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # InspectionDetailsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all inspection_details as @inspection_details" do
      inspection_detail = InspectionDetail.create! valid_attributes
      get :index, {}, valid_session
      assigns(:inspection_details).should eq([inspection_detail])
    end
  end

  describe "GET show" do
    it "assigns the requested inspection_detail as @inspection_detail" do
      inspection_detail = InspectionDetail.create! valid_attributes
      get :show, {:id => inspection_detail.to_param}, valid_session
      assigns(:inspection_detail).should eq(inspection_detail)
    end
  end

  describe "GET new" do
    it "assigns a new inspection_detail as @inspection_detail" do
      get :new, {}, valid_session
      assigns(:inspection_detail).should be_a_new(InspectionDetail)
    end
  end

  describe "GET edit" do
    it "assigns the requested inspection_detail as @inspection_detail" do
      inspection_detail = InspectionDetail.create! valid_attributes
      get :edit, {:id => inspection_detail.to_param}, valid_session
      assigns(:inspection_detail).should eq(inspection_detail)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new InspectionDetail" do
        expect {
          post :create, {:inspection_detail => valid_attributes}, valid_session
        }.to change(InspectionDetail, :count).by(1)
      end

      it "assigns a newly created inspection_detail as @inspection_detail" do
        post :create, {:inspection_detail => valid_attributes}, valid_session
        assigns(:inspection_detail).should be_a(InspectionDetail)
        assigns(:inspection_detail).should be_persisted
      end

      it "redirects to the created inspection_detail" do
        post :create, {:inspection_detail => valid_attributes}, valid_session
        response.should redirect_to(InspectionDetail.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved inspection_detail as @inspection_detail" do
        # Trigger the behavior that occurs when invalid params are submitted
        InspectionDetail.any_instance.stub(:save).and_return(false)
        post :create, {:inspection_detail => {  }}, valid_session
        assigns(:inspection_detail).should be_a_new(InspectionDetail)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        InspectionDetail.any_instance.stub(:save).and_return(false)
        post :create, {:inspection_detail => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested inspection_detail" do
        inspection_detail = InspectionDetail.create! valid_attributes
        # Assuming there are no other inspection_details in the database, this
        # specifies that the InspectionDetail created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        InspectionDetail.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => inspection_detail.to_param, :inspection_detail => { "these" => "params" }}, valid_session
      end

      it "assigns the requested inspection_detail as @inspection_detail" do
        inspection_detail = InspectionDetail.create! valid_attributes
        put :update, {:id => inspection_detail.to_param, :inspection_detail => valid_attributes}, valid_session
        assigns(:inspection_detail).should eq(inspection_detail)
      end

      it "redirects to the inspection_detail" do
        inspection_detail = InspectionDetail.create! valid_attributes
        put :update, {:id => inspection_detail.to_param, :inspection_detail => valid_attributes}, valid_session
        response.should redirect_to(inspection_detail)
      end
    end

    describe "with invalid params" do
      it "assigns the inspection_detail as @inspection_detail" do
        inspection_detail = InspectionDetail.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        InspectionDetail.any_instance.stub(:save).and_return(false)
        put :update, {:id => inspection_detail.to_param, :inspection_detail => {  }}, valid_session
        assigns(:inspection_detail).should eq(inspection_detail)
      end

      it "re-renders the 'edit' template" do
        inspection_detail = InspectionDetail.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        InspectionDetail.any_instance.stub(:save).and_return(false)
        put :update, {:id => inspection_detail.to_param, :inspection_detail => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested inspection_detail" do
      inspection_detail = InspectionDetail.create! valid_attributes
      expect {
        delete :destroy, {:id => inspection_detail.to_param}, valid_session
      }.to change(InspectionDetail, :count).by(-1)
    end

    it "redirects to the inspection_details list" do
      inspection_detail = InspectionDetail.create! valid_attributes
      delete :destroy, {:id => inspection_detail.to_param}, valid_session
      response.should redirect_to(inspection_details_url)
    end
  end

end
