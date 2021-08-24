# Authorizing Requests Lab

## Learning Goals

- Use the session hash to authorize a user to perform actions

## Introduction

In this lab, we'll continue working on the blog site, and add some features that
only logged in users have access to.

There is some starter code in place for a Rails API backend and a React frontend.
To get set up, run:

```console
$ bundle install
$ rails db:migrate db:seed
$ npm install --prefix client
```

You can work on this lab by running the tests with `learn test`. It will also be
helpful to see what's happening during the request/response cycle by running the
app in the browser. You can run the Rails server with:

```console
$ rails s
```

And you can run React in another terminal with:

```console
$ npm start --prefix client
```

You don't have to make any changes to the React code to get this lab working.

## Instructions

Now that we've got the basic login feature working, let's reward our logged
in users with some bonus content that only users who have logged in will be able to access!

We added a new attribute to our articles, `is_member_only`, to reflect whether
the article should only be available to authorized users of the site. We also
created a new `MembersOnlyArticlesController` class to display these exclusive
articles to our logged in users.

Your goal is to add the following functionality to the
`MembersOnlyArticlesController`:

- If a user is not signed in, the `#index` and `#show` actions should return a
  status code of 401 unauthorized, along with an error message
- If the user is signed in, the `#index` and `#show` actions should return the
  JSON data for the members-only articles.

## Resources

- [Action Controller Overview: Filters][filters]

[filters]: http://guides.rubyonrails.org/action_controller_overview.html#filters
