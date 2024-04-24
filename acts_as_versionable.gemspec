# frozen_string_literal: true

require_relative "lib/acts_as_versionable/version"

Gem::Specification.new do |spec|
  spec.name = "acts_as_versionable"
  spec.version = ActsAsVersionable::VERSION
  spec.authors = ["Maxwell Creamer", "Josh Brito", "Paul Shippy"]
  spec.email = ["maxwell.creamer@strongmind.com"]

  spec.summary = "enables versioning of ActiveRecord models"
  # spec.description = "Write a longer description or delete this line."
  spec.homepage = "https://github.com/StrongMind/acts-as-versionable"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/StrongMind/acts-as-versionable"
  # spec.metadata["changelog_uri"] = "Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
