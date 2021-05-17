# Authorizing Requests Lab

## Learning Goals

- Use the session hash authorize a user to perform actions

## Introduction

In this lab, we'll continue working on the blog site, and add some features that
only logged in users have access to.

There is some starter code in place for a Rails API backend and a React frontend.
To get set up, run:

```sh
bundle install
rails db:migrate db:seed
npm install --prefix client
```

You can work on this lab by running the tests with `learn test`. It will also be
helpful to see what's happening during the request/response cycle by running the
app in the browser. You can run the Rails server with:

```sh
rails s
```

And you can run React in another terminal with:

```sh
npm start --prefix client
```

You don't have to make any changes to the React code to get this lab working.

## Instructions

Now that we've got the basic login feature working, let's reward our logged
in users with some bonus content that only users who have logged in will be able to access!

## Resources

- [Action Controller Overview: Filters][filters]

[filters]: http://guides.rubyonrails.org/action_controller_overview.html#filters
