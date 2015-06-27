# JGS EC-site data Creator

## Requirement

* Ruby 2.1+
* Rails 4.1+
* Bluemix SQL Database service


# Installing

1. `git clone`
2. `cd jgs-ec-data`
3. `bower install`
4. `bundle install`
4. Create and bind SQL Database service
5. `cf push`

When deploying this app first time, run `cf push` with option `-c "bundle exec rake db:migrate"`.
(First time deploying app after table has been created, run command with option `-c "null"`.)
