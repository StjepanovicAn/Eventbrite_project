require 'faker'
require 'table_print'

3.times do 
	event = Event.create(location: "bouboubland" , title: Faker::BossaNova.song, start_date: "01/01/2021, 00:00:00", duration: 30, description: Faker::Quote.yoda, price: 12)
end 