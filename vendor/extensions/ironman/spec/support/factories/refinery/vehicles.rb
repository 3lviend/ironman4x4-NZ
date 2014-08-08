
FactoryGirl.define do
  factory :vehicle, :class => Refinery::Ironman::Vehicle do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

