FactoryBot.define do
  factory :book do
    title 'A Fake Title' # default values
    genre 'PG'
    publish_date { 10.years.ago }
  end
end