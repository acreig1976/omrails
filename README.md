# District
===

Dependencies
---
- rbenv
- postgresql
- ruby 2.1.0

Get up and running
---
    $ git clone git@github.com:acreig1976/omrails.git
    $ cd omrails
    $ bundle
    $ rake db:create
    $ rake db:migrate
    $ rake db:seed
    $ bundle exec foreman s

Testing
---
    $ rake

by [Andy Creighton]
