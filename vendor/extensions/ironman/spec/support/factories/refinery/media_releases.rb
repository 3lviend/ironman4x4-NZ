
FactoryGirl.define do
  factory :media_release, :class => Refinery::Ironman::MediaRelease do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

