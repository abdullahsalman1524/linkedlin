# README

<!-- todo this will install bootstrap5 in the project -->
rails css:install:bootstrap

<!-- todo it will install the dependency for bootstrap -->
./bin/importmap pin bootstrap
<!-- todo to create the bin/importmap  -->
./bin/rails importmap:install

<!-- todo  add bootstrap dependency in rails -->
./bin/importmap pin bootstrap

<!-- todo to install devise -->
rails g devise:install

<!-- todo copy this line in development.rb -->
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

<!-- our attributes will be added along with the avaliable one -->
<!-- todo now we want to generate the custom devise properties -->
rails g devise user first_name last_name dob:date username state city country address profile_title detail:text

rails g migration  add_contact_number_to_users contact_no : string

<!-- todo using faker gem we can use the huge amount of data for testing purpose -->

