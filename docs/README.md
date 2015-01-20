
Staging environment
-------------------

    heroku rake db:rollback --app oeco-staging


Development environment
-----------------------

    rails c
    ActiveRecord::Base.connection.execute("drop table properties")


Model
-----

### Category

    rails g scaffold Category name:string:uniq
    rake db:migrate

### User

    rails g scaffold User email:string:uniq password:digest name:string
    rake db:migrate

### Property

    rails g scaffold Property name:string:uniq order:integer:uniq
    rake db:migrate
