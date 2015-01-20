oeco
====

oeco architectes website


Continuous deployment
---------------------

Continuous integration is managed by [Codeship](https://www.codeship.io/).
Code analysis is performed by [Code Climate](https://codeclimate.com/).
Dependency tracking is managed by [Gemnasium](https://gemnasium.com/).

[![Build Status](http://img.shields.io/codeship/3a5506d0-399b-0132-7358-4e57ec3927cd.svg?style=flat-square)](https://codeship.io/projects/42234)
[![Code Climate](http://img.shields.io/codeclimate/github/amercier/oeco.svg?style=flat-square)](https://codeclimate.com/github/amercier/oeco)
[![Test Coverage](http://img.shields.io/codeclimate/coverage/github/amercier/oeco.svg?style=flat-square)](https://codeclimate.com/github/amercier/oeco)
[![Dependency Status](http://img.shields.io/gemnasium/amercier/oeco.svg?style=flat-square)](https://gemnasium.com/amercier/oeco)

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
