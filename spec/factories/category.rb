FactoryGirl.define do
  factory :category do
    name 'Test category'
  end

  factory :alternate_category, parent: :category do
    name 'Alternate category'
  end

  factory :category_with_empty_name, parent: :category do
    name ''
  end
end
