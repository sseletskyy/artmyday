require 'rails_helper'

RSpec.describe "monuments/show", :type => :view do
  before(:each) do
    @collection = FactoryGirl.create(:collection)
    @monument = assign(:monument, Monument.create!(
      :name => "Name",
      :description => "Description",
      :category => nil,
      :collection => @collection
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
