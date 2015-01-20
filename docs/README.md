
Staging environment
-------------------

    heroku rake db:rollback --app oeco-staging


Model
-----

### Category

    rails g scaffold Category name:string:uniq
    rake db:migrate
