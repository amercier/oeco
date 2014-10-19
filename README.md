oeco
====

oeco architectes website


Continuous deployment
---------------------

Continuous integration is managed by Codeship.

[ ![Codeship Status for amercier/oeco](https://codeship.io/projects/3a5506d0-399b-0132-7358-4e57ec3927cd/status)](https://codeship.io/projects/42234)

Pushes on master branch are automatically deployed on
[http://oeco.herokuapp.com](http://oeco-staging.herokuapp.com).

# Step 1: deploy to master

    git push

# Step 2: test at [http://oeco-staging.herokuapp.com](http://oeco-staging.herokuapp.com)

# Step 3: deploy to production

    git push production


Heroku initial deployment
-------------------------

Heroku configuration:

    heroku keys:add

Staging environment:

    git remote add staging git@heroku.com:oeco-staging.git
    git push staging
    heroku run rake db:migrate --app oeco-staging
    heroku run rake db:migrate --app oeco-staging

Production environment:

    git remote add production git@heroku.com:oeco.git
    git push production
    heroku run rake db:migrate --app oeco
    heroku run rake db:migrate --app oeco
