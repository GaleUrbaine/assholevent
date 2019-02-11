require 'faker'


	User.destroy_all

10.times do |index|

	user = User.new 
	user.email = Faker::Internet.email
	user.description = Faker::Lorem.paragraph
	user.first_name = Faker::LordOfTheRings.character
	user.last_name = Faker::Name.last_name
	user.save
end
	
	Event.destroy_all

20.times do |index|

	user = User.all.sample

	event = Event.new

	event.start_date = Faker::Time.forward(23, :morning)
	event.duration = 30
	event.title = Faker::Lorem.sentence
	event.description = Faker::Lorem.sentence(5)
	event.price = rand(1..1000)
	event.location = Faker::LordOfTheRings.location
	event.user = user
	event.save

end

	Attendance.destroy_all
10.times do |index|

	event = Event.all.sample
	user = User.all.sample
	Attendance.create(event: event, user: user)

end

