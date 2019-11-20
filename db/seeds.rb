3.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
  Doctor.create(
    name: Faker::DcComics.villain
  )
end

Appointment.create(
  doctor_id: Doctor.first.id,
  user_id: User.first.id,
  date: Faker::Date.forward(days: 23),
  time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short)
)