
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

### Project

    rails g scaffold Project url:string:uniq title:string summary:string published:boolean
    rake db:migrate

    rails g scaffold_hmt Project Category
    # + Remove useless models
    # + Add has_and_belongs_to_many relationships
    # + Rename migration files
    # + Rename migration classes
    rake db:migrate

    rails g scaffold_hmt Project Category
    # + same...
    rake db:migrate
