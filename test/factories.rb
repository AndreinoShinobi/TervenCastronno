FactoryGirl.define do
  factory :contact do
    
  end

  factory :event do

    trait :event_one do
      name 'event_one_name'
      date DateTime.now
      description 'event\'s description'
    end

    trait :event_two do
      name 'event_two_name'
      date DateTime.now
      description 'event\'s description'
    end

    trait :event_without_name do
      date DateTime.now
    end

    trait :event_without_date do
      name 'event_name'
    end

  end

end