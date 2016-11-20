require 'rails_helper'

RSpec.describe Region, type: :model do

  it 'should have a valid factory' do
    expect(build(:region)).to be_valid
  end

  describe 'scope.countries' do
    let!(:country_1) { create(:region, category: 'country') }
    let!(:country_2) { create(:region, category: 'country') }
    let!(:state) { create(:region, category: 'state') }

    it { expect(Region.countries.length).to eq 2 }
    it { expect(Region.countries).to include country_1 }
    it { expect(Region.countries).to include country_2 }
  end

  describe 'associations' do
    it { should belong_to :region }
    it { should have_many :regions }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:code) }
    it { should validate_presence_of(:category) }

    it { should validate_uniqueness_of(:code).scoped_to(:region_id) }
  end

end
