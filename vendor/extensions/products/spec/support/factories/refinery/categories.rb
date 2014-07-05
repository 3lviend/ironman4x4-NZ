
FactoryGirl.define do
  factory :category, :class => Refinery::Products::Category do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

