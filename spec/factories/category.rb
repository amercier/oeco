FactoryGirl.define do
  factory :category do
    name 'Test category'
  end

  factory :alternate_category, parent: :category do
    name 'Alternate category'
  end

  factory :invalid_category, parent: :category do
    name ''
  end
end
