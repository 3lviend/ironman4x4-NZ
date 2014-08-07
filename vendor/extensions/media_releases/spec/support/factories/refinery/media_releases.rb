
FactoryGirl.define do
  factory :media_release, :class => Refinery::MediaReleases::MediaRelease do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

