FactoryGirl.define do
  factory :user, class: User do
      email "danny@gmail.com"
      password "london123"
  end

  factory :user2, class: User do
      email "danny@gmail.com"
      password "london123"
      password_confirmation "london123"
  end
end
