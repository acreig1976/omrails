# District

Dependencies
---
- rbenv [https://github.com/sstephenson/rbenv#installation](https://github.com/sstephenson/rbenv#installation)
- postgresql [http://postgresapp.com/](http://postgresapp.com/)
- ruby 2.1.0
  - [https://github.com/sstephenson/ruby-build](https://github.com/sstephenson/ruby-build)
  - [https://github.com/sstephenson/rbenv#installing-ruby-versions](https://github.com/sstephenson/rbenv#installing-ruby-versions)

Get up and running locally
---
    $ git clone git@github.com:acreig1976/omrails.git
    $ cd omrails
    $ bundle
    $ rake db:create
    $ rake db:migrate
    $ rake db:seed
    $ bundle exec foreman s
    $ open http://localhost:5000

Deploying
---
    $ git remote add heroku git@heroku.com:morning-crag-3263.git # if this is the first time
    $ git push heroku master

Testing
---
    $ rake

by [Andy Creighton]
