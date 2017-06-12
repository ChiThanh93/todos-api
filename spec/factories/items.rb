FactoryGirl.define  do
  factory :item do
    name {Faker::StarWars.charater}
    done false
    todo_id nil
  end
end
