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
- Fix errors
- Apply sessions so that a guest can use app immediately
- find supplement provider that meets API params needs and monetizatoin wants
- Add OAuth so that it easier for them to share my site on social media
- SSL certificate for your domain - for now piggy back on heroku's
- Add twitter API so they can tweet and let people know they saved
- Add other APIs to make it easier to share


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

guest solutions: More than on e can be picked
We can store the id of the objects in the session.

Start here (http://guides.rubyonrails.org/security.html)
1.  Barebones DIY for state
(https://rubyplus.com/articles/4181-Supporting-Guest-Users-in-Rails-5-App)

2. (https://github.com/plataformatec/devise)

3.  More of a visit tracker
(https://rubyplus.com/articles/4181-Supporting-Guest-Users-in-Rails-5-App)

4. (https://www.theodinproject.com/courses/ruby-on-rails/lessons/sessions-cookies-and-authentication)

5.  Argument for token based vs. session based - Walks me through the whole process.  Consider state though and if they can use app off the batt. (https://www.pluralsight.com/guides/ruby-ruby-on-rails/token-based-authentication-with-ruby-on-rails-5-api)

*********
FormulaProfiles has_many Ingredients - belongs_to current_user and/or user  - :references, :formula_name
Ingredients belongs_to FormulaProfile
	-constituent:string quality1:string quality2:string quality3:string amount:integer amount_units:string

	constituent must be used - others are optional

	for amount and amount units, find examples of calculators and write them in
