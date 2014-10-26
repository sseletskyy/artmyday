require 'rails_helper'

RSpec.describe "monuments/index", :type => :view do
  before(:each) do
    @category = FactoryGirl.create(:category)
    @collection = FactoryGirl.create(:collection)
    assign(:monuments, Kaminari.paginate_array([
      Monument.create!(
        :name => "Name",
        :description => "Description",
        :category => @category,
        :collection => @collection
      ),
      Monument.create!(
        :name => "Name",
        :description => "Description",
        :category => @category,
        :collection => @collection
      )
    ]).page(1))
  end

  it "renders a list of monuments" do
    render
    assert_select "a>span", :text => 'Name', :count => 2
  end
end
