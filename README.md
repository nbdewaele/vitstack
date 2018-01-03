# README
# This is a purposefully vague README that will be changed to a private repo.

Guided by:
https://github.com/mhartl/sample_app_3rd_edition

IMPORTANT - 1st user must be deleted - they have admin privs

To populate production database:
$ rails test
$ git push heroku
$ heroku pg:reset DATABASE
$ heroku run rails db:migrate
$ heroku run rails db:seed
$ heroku restart



TODO:
SSL certificate for your domain - for now piggy back on heroku's

##############################
I wish not to disclose details.
If you have questions -  message me

rails 5.1.4



Things you may want to cover:

* Ruby version 2.4.1

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
