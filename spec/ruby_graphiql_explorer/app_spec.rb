require "spec_helper"

describe RubyGraphiqlExplorer::App do
  include Rack::App::Test

  rack_app described_class

  describe "/" do
    subject { get(url: "/") }
    it { expect(subject.status).to eq 200 }
    it { expect(subject.body).to include "GraphQL API explorer" }
  end
end
