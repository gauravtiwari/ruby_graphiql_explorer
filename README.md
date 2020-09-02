[![Maintainability](https://api.codeclimate.com/v1/badges/2b689e2db08845bf3c28/maintainability)](https://codeclimate.com/github/gauravtiwari/ruby_graphiql_explorer/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/2b689e2db08845bf3c28/test_coverage)](https://codeclimate.com/github/gauravtiwari/ruby_graphiql_explorer/test_coverage)
![Rspec](https://github.com/gauravtiwari/ruby_graphiql_explorer/workflows/Rspec/badge.svg)

# Ruby Graphiql Explorer

Super simple rack app to render GraphiQL editor into a Ruby or Rails web app.

![Screenshot](https://user-images.githubusercontent.com/771039/92003081-7f6ca700-ed38-11ea-94af-48c2867d0c29.png)

## Installation

Add this line to your application's Gemfile:

```ruby
gem "ruby_graphiql_explorer"
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install ruby_graphiql_explorer

## Usage

### Rails

Mount the rack app in `routes.rb`

```rb
mount RubyGraphiqlExplorer::App, at: "/graphiql"
```

### Ruby

Using `config.ru`

```rb
require "ruby_graphiql_explorer"
run RubyGraphiqlExplorer::App
```

Using `Rack::URLMap`

```rb
require "ruby_graphiql_explorer"
run Rack::URLMap.new("/graphiql" => RubyGraphiqlExplorer::App)
```

By default the rack app expects GraphQL endpoint to be available at
`http://localhost::3000/graphql` but you can override using
`GRAPHQL_API_URL` env variable. Additionally, you can set api key/token using
`GRAPHQL_API_KEY` if your GraphQL API is protected.

```yml
GRAPHQL_API_URL: http://localhost::3000/api
GRAPHQL_API_KEY: foobar
```

## Development

After checking out the repo, run `bundle` to install dependencies. Then, run `bundle exec rspec spec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gauravtiwari/ruby_graphiql_explorer.
