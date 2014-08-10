
FactoryGirl.define do
  factory :warehouse, :class => Refinery::Ironman::Warehouse do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

