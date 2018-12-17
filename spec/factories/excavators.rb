FactoryGirl.define do
  factory :excavator do
    company_name "MyString"
    address "MyText"
    city "MyString"
    state "MyString"
    zip "MyString"
    crew_on_site false
    ticket nil
  end
end
