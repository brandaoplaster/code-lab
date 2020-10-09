# Code Lab

A simple blog for publishing articles that has the following features:
- Article creation
- Categories
- Search for articles by date or category

## Prerequisites

>You just need have docker-compose installed in your machine.

## Getting Started
>To get the app running, run the following commands:


1 - building an image
  ```
  docker-compose build
  ```

2 - Installing the gems
  ```
  docker-compose run --rm webiste bundle install
  ```

3 - Creating the database
  ```
  docker-compose run --rm website bundle exec rails db:create
  ```

4 - Making the migrations
  ```
  docker-compose run --rm website bundle exec rails db:migrate
  ```

5 - Up service
 ```
 docker-compose up
 ```

6 - Running the tests
  ```
  docker-compose run --rm website bundle exec rspec
  ```

## Built With

* [Ruby on Rails](https://rubyonrails.org/) - Dependency Management
* [Bulma](https://bulma.io/) - Dependency Management
* [RSpec](https://rspec.info/) - Dependency Management

## Authors

* **BrandaoPlaster** - [brandaoplaster](https://github.com/brandaoplaster)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
