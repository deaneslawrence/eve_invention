FactoryGirl.define do
  factory :user do
    eve_key  "565656"
    email    "deane@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end