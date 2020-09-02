require "ruby_graphiql_explorer/version"
require "rack/app"
require "rack/app/front_end"

module RubyGraphiqlExplorer
  class Error < StandardError; end

  class App < Rack::App
    apply_extensions :front_end

    get "/" do
      render "index.html.erb"
    end
  end
end
