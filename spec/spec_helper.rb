require('rspec')
require('pg')
require('food')
require('restaurant')

DB = PG.connect({:dbname => "restaurants_test"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM  foods*;")
    DB.exec("DELETE FROM restaurants*;")
  end
end
