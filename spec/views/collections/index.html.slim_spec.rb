require 'rails_helper'

RSpec.describe 'collections/index', :type => :view do
  let(:collection_name){'Collection A'}
  let(:collection_name_2){'Collection B'}
  before(:each) do
    assign(:collections, Kaminari.paginate_array([
      Collection.create!(
        :name => collection_name,
        :user => nil
      ),
      Collection.create!(
        :name => collection_name_2,
        :user => nil
      )
    ]).page(1))
  end

  it 'renders a list of collections' do
    render
    assert_select "a>span", :text => collection_name, :count => 1
    assert_select "a>span", :text => collection_name_2, :count => 1
  end
end
