
FactoryGirl.define do
  factory :catalogue, :class => Refinery::Ironman::Catalogue do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

