
FactoryGirl.define do
  factory :category, :class => Refinery::Ironman::Category do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

