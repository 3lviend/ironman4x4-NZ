
FactoryGirl.define do
  factory :vehicle, :class => Refinery::Products::Vehicle do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

