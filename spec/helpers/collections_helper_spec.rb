require 'rails_helper'

RSpec.describe CollectionsHelper, :type => :helper do
  describe 'display_as' do
    describe 'if params[:display_as] is undefined' do
      it 'should return [cover] ' do
        expect(helper.display_as).to eq('cover')
      end
    end
    describe 'if params[:display_as] == [list]' do
      before(:each) do
        params[:display_as] = 'list'
      end
      it 'should return [list] ' do
        expect(helper.display_as).to eq('list')
      end
    end
    describe 'if params[:display_as] == [cover]' do
      before(:each) do
        params[:display_as] = 'cover'
      end
      it 'should return [cover] ' do
        expect(helper.display_as).to eq('cover')
      end
    end
    describe 'if params[:display_as] == any_other_text' do
      before(:each) do
        params[:display_as] = 'any_other_text'
      end
      it 'should return [cover] ' do
        expect(helper.display_as).to eq('cover')
      end
    end
  end
end
