require 'rails_helper'

RSpec.describe MonumentsController, :type => :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(:get => '/collections/1/monuments').to route_to('monuments#index', collection_id: '1')
    end

    it 'routes to #new' do
      expect(:get => '/collections/1/monuments/new').to route_to('monuments#new', collection_id: '1')
    end

    it 'routes to #show' do
      expect(:get => '/collections/1/monuments/1').to route_to('monuments#show', :id => '1', collection_id: '1')
    end

    it 'routes to #edit' do
      expect(:get => '/collections/1/monuments/1/edit').to route_to('monuments#edit', :id => '1', collection_id: '1')
    end

    it 'routes to #create' do
      expect(:post => '/collections/1/monuments').to route_to('monuments#create', collection_id: '1')
    end

    it 'routes to #update' do
      expect(:put => '/collections/1/monuments/1').to route_to('monuments#update', :id => '1', collection_id: '1')
    end

    it 'routes to #destroy' do
      expect(:delete => '/collections/1/monuments/1').to route_to('monuments#destroy', :id => '1', collection_id: '1')
    end

  end
end
