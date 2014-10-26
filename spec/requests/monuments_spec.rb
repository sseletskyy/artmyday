require 'rails_helper'

RSpec.describe "Monuments", :type => :request do
  before(:each) do
    @collection = FactoryGirl.create(:collection)
  end
  describe "when unauthorised" do
    describe "GET /monuments" do
      it "redirects to sign in page (302)" do
        get collection_monuments_path(@collection)
        expect(response).to have_http_status(302)
      end
    end
  end
  describe "when authorised" do
    before(:each) do
      login_user_for_request
    end
    describe "GET /collections/X/monuments" do
      it "grant access (200)" do
        get collection_monuments_path(@collection)
        expect(response).to have_http_status(200)
      end
    end
  end
end
