FactoryGirl.define do
  factory :enquiry, class: Refinery::Ironman::Enquiry do
    name "Refinery"
    email "refinery@example.com"
    message "Hello..."
  end
end
