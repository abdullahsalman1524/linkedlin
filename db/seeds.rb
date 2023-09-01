# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ActiveRecord::Base.transaction do
  1000.times do |i|
    User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      username: "#{Faker::Name.first_name.downcase}_#{i + 1}",
      email: Faker::Internet.email,
      contact_no: Faker::PhoneNumber.phone_number_with_country_code,
      address: Faker::Address.street_address,
      city: Faker::Address.city,
      state: Faker::Address.state,
      country: Faker::Address.country,
      dob: Time.zone.today,
      profile_title: User::Profile_title.sample,
      password: 'password',
      detail: " i am a good boy i am working at devsinc i am a ror developer"
    )

    Rails.logger.debug { "User #{i + 1} has been created" }
  end
end
