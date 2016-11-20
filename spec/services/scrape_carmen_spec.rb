require 'rails_helper'

RSpec.describe ScrapeCarmen do

  describe '.import' do
    let!(:country) { Carmen::Country.named('United States') }

    it 'should create regions' do
      expect { ScrapeCarmen.import(country) }.to change{ Region.count }
    end

    context 'after execution' do
      before(:each) { ScrapeCarmen.import(country) }

      it 'should create country' do
        expect(Region.find_by(category: 'country', name: 'United States')).to_not be_nil
      end

      it 'should create associated states' do
        expect(
            Region.find_by(category: 'country', name: 'United States').regions.where(category: 'state')
        ).to_not be_empty
      end
    end
  end

end