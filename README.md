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

## Development

After checking out the repo, run `bundle` to install dependencies. Then, run `bundle exec rspec spec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gauravtiwari/ruby_graphiql_explorer.
