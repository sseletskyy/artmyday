ArtMyDay
========

a small web application that allows users to create and manage collections of pictures of favourite monuments in a simple way

Deploy to Heroku
========

# Create Procfile with the content
    > web: bundle exec passenger start -p $PORT --max-pool-size 2
# Create a new app 'artmyday'
# Login to Heroku CLI toolbelt
# Add heroku git report as remote
    > heroku git:remote -a artmyday
# Add add-ons
    > heroku addons:add heroku-postgresql
    > heroku addons:add sendgrid
    > heroku addons:add rollbar 

# Push the code
    > git push heroku master

# Set variables
    > heroku config:set MAILER_URL= artmyday.herokuapp.com
    > heroku config:set SYSTEM_EMAIL=sseletskyy@gmail.com

# Set schema in database 
    > heroku run rake db:schema:load
    > heroku run rake db:migrate