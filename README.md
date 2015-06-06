:soccer: Footy finder :soccer:
===========
This is our first project done as a 'big team' at Makers Academy (March 2015 cohort)! Our team of 6 consisted of Andrea, Guillaume, Jacob, Maciek, Massud and Paul.

Footy finder is a football application that allows a user to either organise friendly football games or find nearby friendly matches that he/she can take part in.

How 'Footy finder' works
----
- To create or take part into a game, a user need to be logged in; meaning that he/she would need to have registered/signed up and signed to Footy finder.
- A user can create a game by setting up a time and a location in the application. He/she obviously signs up as a user for this game.
- Any user can sign-up to take part in any game that has been created and can also leave a game that he previously signed up to. He/she cannot register twice to a same game, obviously.
- the creator of a game has the option to edit and delete a game. He/she is the only user allowed to perfom that action.
- 22 players being a bit too many, we made matches as being 5 versus 5; a game is only confirmed when 10 players have signed for it.

Objectives of exercise
----
Learn about teamworking and get at least a MVP working as a team.

Technologies used
----
- Ruby
- Rails
- Postgres & ActiveRecord
- Googlemap API
- Gems: bcrypt, datetimepicker-rails, devise, geocoder, googlemap autocomplete, simple_form
- HTML, CSS & Bootstrap
- rspec & Capybara
- Git

Online / Heroku link
----

[Footy Finder](link please?)

How to run the application on a local machine
----
```
git clone git@github.com:GBouffard/footy_finder.git
cd footy_finder
bundle install
rake db:migrate
```

How to run tests
----
```
cd footy_finder
rspec
```