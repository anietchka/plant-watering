Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

## System dependencies
* Ruby version
2.7.3

* Rails Version
6.1.4.1

* Yarn Version
v1.22.17

* Node Module version
V16.11.1

* Wepacker 5
* Bootstrap 5

# Stack

- [Ruby on Rails](https://rubyonrails.org/)
- [Bootstrap](https://getbootstrap.com/)
- [PostgreSQL](https://www.postgresql.org/)

# Local Development

## Installation

### Prerequisites

If you don't already have them :

- Install ruby 2.7.3 `rbenv install 2.7.3 && rbenv global 2.7.3`
- Install bundler 2.2.15 `gem install bundler:2.2.15`
- Install yarn `npm i -g yarn`

### Dependencies

Setup the project's dependencies :

```bash
bundle install
yarn
```

Create the `.env` file:

### Database / Cache

1. Create a database called `plant-watering_development` using your favorite postgresql GUI or CLI.
2. Then run the migrations : `bin/rails db:migrate RAILS_ENV=development`

### Running

```bash
bin/rails s
```

If you need Webpacker development server, you can start it using

```bash
webpack-dev-server
```
