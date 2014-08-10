
FactoryGirl.define do
  factory :post, :class => Refinery::Ironman::Post do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

