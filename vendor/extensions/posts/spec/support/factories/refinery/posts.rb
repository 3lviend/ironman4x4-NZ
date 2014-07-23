
FactoryGirl.define do
  factory :post, :class => Refinery::Posts::Post do
    sequence(:type) { |n| "refinery#{n}" }
  end
end

