FactoryGirl.define do
  factory :user do
    name     "Testy Tester"
    email    "testy.tester@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end

