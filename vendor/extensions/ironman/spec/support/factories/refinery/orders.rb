
FactoryGirl.define do
  factory :order, :class => Refinery::Ironman::Order do
    sequence(:order_no) { |n| "refinery#{n}" }
  end
end

