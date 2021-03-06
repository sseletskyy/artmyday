require 'rails_helper'

RSpec.describe "Collections", :type => :request do
  describe "when unauthorised" do
    describe "GET /collections" do
      it "redirects to sign in page (302)" do
        get collections_path
        expect(response).to have_http_status(302)
      end
    end
  end
  describe "when authorised" do
    before(:each) do
      login_user_for_request
    end
    describe "GET /collections" do
      it "grant access (200)" do
        get collections_path
        expect(response).to have_http_status(200)
      end
    end
  end
end
