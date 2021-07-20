# Sprout Tracker

## User Stories

- signup
- login
- view all sprouts
- create new instances of user_sprouts

## models & relationships

## user model

- has_many :user_sprouts
- has_many sprouts, through: :user_sprouts <-- This is not possible without the previously declared has_many relationship -->

## user_sprout model

- belongs_to :user
- belongs_to :sprout

## sprout model

- will create all sprouts in seeds file
- has_many :user_sprouts
- has_many :users, through: :user_sprouts

## database tables & attributes

## user ----------< :user_sprout >----------- :sprout

user attributes:

- password
- username
- timestamps
- is_live?

user_sprout attributes:

- user_id
- sprout_id
- timestamps

sprout attributes:

- name
- description
- number_of_days
- instructions
