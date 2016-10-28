FactoryGirl.define do
  factory :parkingspot do
  	id '1'
  	parkinglot_id '1'
    status 'open'
    occupying nil
    spot_type 'normal'

    trait :empty do
    	status 'open'
    	occupying nil
    end
  end
end
