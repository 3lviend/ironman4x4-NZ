
FactoryGirl.define do
  factory :ironman, :class => Refinery::Ironman::Ironman do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

