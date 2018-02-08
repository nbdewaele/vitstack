# README
Watch this app progress at (https://mighty-beyond-43620.herokuapp.com/)

![Front page of VitStack](/app/assets/images/vitstack_sc.png)

app/views/layouts/application.html.erb shows debug info but not in deployment
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
- Apply sessions so that a guest can use app immediately
	- States: so that app FormulaProfiles not orphaned when created without registered user
- find supplement provider that meets API params needs and monetization wants
- Add OAuth so that it easier for them to share my site on social media
- SSL certificate for your domain - for now piggy back on heroku's
- Add twitter API so they can tweet and let people know they saved
- Add other APIs to make it easier to share
- Convert "unactivated" and "activated" user to enjoy base app features without having to sign up.
- Channge host to Cloud IDE in config/environments/development.rb - it will look like: host = 'vitstack-app.c9users.io' then change to https


##############################
I wish not to disclose details.
If you have questions -  message me

rails 5.1.4



Things you may want to cover:

* Ruby version 2.5.0

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


Thanks Izzy:
rails new -m /Desktop/path/newapp
IzzyApp.rb

database is sqlite3 as indicated in config/database.yml

Notes on Environment:
Rails comes equipped with three environments: test, development, and production. The default environment for the Rails console is development:

  $ rails console
  Loading development environment
  >> Rails.env
  => "development"
  >> Rails.env.development?
  => true
  >> Rails.env.test?
  => false
As you can see, Rails provides a Rails object with an env attribute and associated environment boolean methods, so that, for example, Rails.env.test? returns true in a test environment and false otherwise.

If you ever need to run a console in a different environment (to debug a test, for example), you can pass the environment as a parameter to the console script:

  $ rails console test
  Loading test environment
  >> Rails.env
  => "test"
  >> Rails.env.test?
  => true
As with the console, development is the default environment for the Rails server, but you can also run it in a different environment:

  $ rails server --environment production
If you view your app running in production, it won’t work without a production database, which we can create by running rails db:migrate in production:

  $ rails db:migrate RAILS_ENV=production
(I find it confusing that the idiomatic commands to run the console, server, and migrate commands in non-default environments use different syntax, which is why I bothered showing all three. It’s worth noting, though, that preceding any of them with RAILS_ENV=<env> will also work, as in RAILS_ENV=production rails server).

By the way, if you have deployed your sample app to Heroku, you can see its environment using heroku run rails console:

  $ heroku run rails console
  >> Rails.env
  => "production"
  >> Rails.env.production?
  => true
Naturally, since Heroku is a platform for production sites, it runs each application in a production environment.

To get sendgrid username and password:
$ heroku config:get SENDGRID_USERNAME
$ heroku config:get SENDGRID_PASSWORD


ruby 2.5.0 notes
If you're using `rbenv`, you'll need to `rbenv rehash` after installing certain gems with executables. If you're using `rvm`, then you need to restart Terminal to run the setup script inside `.bash_profile` or `.profile`. If you get permission errors, it's because rvm/rbenv aren't setup correctly and you're trying to install into the OSX system Ruby. (edited)
