# Granite

This is the sample application for [*Learn Ruby on Rails*](https://learnrubyonrails.bigbinary.com/docs/) by [Big Binary](https://www.bigbinary.com/).

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```
