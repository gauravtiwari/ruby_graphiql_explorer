require_relative "lib/ruby_graphiql_explorer/version"

Gem::Specification.new do |spec|
  spec.name          = "ruby_graphiql_explorer"
  spec.version       = RubyGraphiqlExplorer::VERSION
  spec.authors       = ["Gaurav Tiwari"]
  spec.email         = ["gaurav@gauravtiwari.co.uk"]

  spec.summary       = "Minimal mountable API graphiql explorer"
  spec.description   = "Minimal mountable API graphiql explorer"
  spec.homepage      = "https://github.com/gauravtiwari/ruby_graphiql_explorer"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/gauravtiwari/ruby_graphiql_explorer"
  spec.metadata["changelog_uri"] = "https://github.com/gauravtiwari/ruby_graphiql_explorer"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rack-app"
  spec.add_dependency "rack-app-front_end"

  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rubocop-performance"
end
