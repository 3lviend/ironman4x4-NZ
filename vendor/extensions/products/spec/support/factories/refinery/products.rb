
FactoryGirl.define do
  factory :product, :class => Refinery::Products::Product do
    sequence(:product_no) { |n| "refinery#{n}" }
  end
end

