
FactoryGirl.define do
  factory :stockist, :class => Refinery::Stockists::Stockist do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

