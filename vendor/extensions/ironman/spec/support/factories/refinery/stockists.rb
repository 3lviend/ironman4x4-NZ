
FactoryGirl.define do
  factory :stockist, :class => Refinery::Ironman::Stockist do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

