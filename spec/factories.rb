FactoryGirl.define do
  factory :user do
    email 'fancyfrank@gmail.com'
    user_name 'Arnie'
    password 'illbeback'
    sequence(:id) { |id| id }
  end
  factory :post do
    caption "nofilter"
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/coffee.jpg', 'image/jpg')
    user
  end
end