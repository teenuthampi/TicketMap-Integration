FactoryGirl.define do
  factory :ticket do
    request_number "MyString"
    sequence_number 1
    request_type "MyString"
    response_due_date_time "2018-12-17 16:34:21"
    primary_service_area_code "MyString"
    additional_service_area_code [1, 2, 3] 
    wellknown_text "MyText"
  end
end
