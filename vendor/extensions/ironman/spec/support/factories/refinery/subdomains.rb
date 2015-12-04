
FactoryGirl.define do
  factory :subdomain, :class => Refinery::Ironman::Subdomain do
    sequence(:db_name) { |n| "refinery#{n}" }
  end
end

