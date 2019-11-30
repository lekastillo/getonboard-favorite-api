require 'rails_helper'

RSpec.describe FavoriteJobsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "Create a new Favorite Job" do
        
        expect {
          post :create, params: {favorite_job: { job_id: "new-job-id" } }  
        }.to change(FavoriteJob, :count).by(1)
      end

      it "Render a json object" do

        post :create, params: {favorite_job: { job_id: "new-job-id" } }  
        expect(response).to have_http_status(:success)
        expect(response.content_type).to eq('application/json; charset=utf-8')
        
      end

    end

    context "with invalid params" do
      it "Render a JSON with the errors" do
        
        post :create, params: {favorite_job: { job_id: nil } }  
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end

    end
  end
 
  # describe "DELETE #destroy" do
  #   it "returns http created" do
  #     post :create, :params => { :favorite_job => { :job_id => "job-id" } }
  #     expect(response).to have_http_status(:created)
  #   end
    
  #   it "returns http created" do
  #     post :create, :params => { :favorite_job => { :job_id => "job-id" } }
  #     expect(response).to have_http_status(:created)
  #   end
  # end


end
