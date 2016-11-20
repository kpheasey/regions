FactoryGirl.define do
  factory :region do
    sequence(:code) { |n| n }
    category 'country'
    name 'Country Name'
  end
end
