# frozen_string_literal: true

require_relative "lib/activerecord_where_methods/version"

Gem::Specification.new do |spec|
  spec.name = "activerecord_where_methods"
  spec.version = ActiverecordWhereMethods::VERSION
  spec.authors = ["Zanshin Software"]
  spec.email = ["contato@zanshinsoftware.com"]

  spec.summary = "An ActiveRecord plugin providing a higher-level abstraction for some SQL queries."
  spec.description = "An ActiveRecord plugin providing a higher-level abstraction for some SQL queries."
  spec.homepage = "https://github.com/zanshinsoftware/activerecord_where_methods"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = spec.homepage
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "activerecord"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
