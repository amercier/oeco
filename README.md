oeco
====

oeco architectes website


Continuous deployment
---------------------

Continuous integration is managed by [Travis CI](https://travis-ci.org/amercier/oeco).
Code analysis is performed by [Code Climate](https://codeclimate.com/github/amercier/oeco).
Dependency tracking is managed by [Gemnasium](https://gemnasium.com/amercier/oeco).

[![Build Status](https://travis-ci.org/amercier/oeco.svg?branch=master)](https://travis-ci.org/amercier/oeco)
[![Code Climate](https://codeclimate.com/github/amercier/oeco/badges/gpa.svg)](https://codeclimate.com/github/amercier/oeco)
[![Test Coverage](https://codeclimate.com/github/amercier/oeco/badges/coverage.svg)](https://codeclimate.com/github/amercier/oeco)
[![Dependency Status](https://gemnasium.com/amercier/oeco.svg)](https://gemnasium.com/amercier/oeco)

Pushes on master branch are automatically deployed on
[http://oeco-staging.herokuapp.com](http://oeco-staging.herokuapp.com).

Tags are automatically deployed on
[http://oeco.herokuapp.com](http://oeco.herokuapp.com).

Step 1: deploy to master

    git push

Step 2: test at [http://oeco-staging.herokuapp.com](http://oeco-staging.herokuapp.com)

Step 3: deploy to production

    git tag vX.Y.Z
    git push --tags


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
