# README

## What's Squad Maker?
 - This is a solution for the Squad Maker Challenge. See [CHALLENGE.md](CHALLENGE.MD) for more details.

## Dependencies
 - Ruby v2.3.3
 - Rails v5.2.2
 - PostgreSQL
 - Node.js

## Running Locally

Clone down this repo:
```shell
git clone git@github.com:murny/squad-maker.git
```

Navigate into it:
```shell
cd squad-maker
```

Install gems for project:
```shell
bundle install
```

Create and setup the database:
```shell
rails db:create && rails db:migrate
```

Start the Rails server:
```shell
rails server
```

And now you can visit the site with at http://localhost:3000

## Testing
Run the test suite by executing the following:
```shell
bundle exec rails test
```

We also use rubocop for linting:
```shell
bundle exec rubocop
```


## Deployment
We use heroku for production. To deploy to heroku run the following:
```shell
heroku create
git push heroku master
heroku run rake db:migrate
heroku open
```
