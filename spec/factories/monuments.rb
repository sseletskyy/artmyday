FactoryGirl.define do
  factory :monument do
    name "Monument #{Faker::Name.name}"
    description "MyString"
    category
    collection
  end

end
