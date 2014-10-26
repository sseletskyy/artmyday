require 'rails_helper'

RSpec.describe "monuments/new", :type => :view do
  before(:each) do
    @collection = FactoryGirl.create(:collection)
    assign(:monument, Monument.new(
      :name => "MyString",
      :description => "MyString",
      :category => nil,
      :collection => @collection
    ))
  end

  it "renders new monument form" do
    render

    assert_select "form[action=?][method=?]", collection_monuments_path(@collection), "post" do

      assert_select "input#monument_name[name=?]", "monument[name]"

      assert_select "input#monument_description[name=?]", "monument[description]"

      assert_select "select#monument_category_id[name=?]", "monument[category_id]"

      assert_select "input#monument_new_category_name[name=?]", "monument[new_category_name]"

      assert_select "input#monument_collection_id[name=?]", "monument[collection_id]"
    end
  end
end
