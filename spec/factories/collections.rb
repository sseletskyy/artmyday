FactoryGirl.define do
  factory :collection do
    name "Collection #{Faker::Name.name}"
    user
  end

end
