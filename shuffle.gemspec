# frozen_string_literal: true

require_relative "lib/shuffle/version"

Gem::Specification.new do |spec|
  spec.name = "shuffle"
  spec.version = Shuffle::VERSION
  spec.authors = ["Yusuke Sangenya"]
  spec.email = ["longinus.eva@gmail.com"]

  spec.summary = "shuffle string"
  spec.description = "shuffle given string"
  spec.homepage = "https://github.com/genya0407/shuffle"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

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
  spec.extensions = ["ext/shuffle/extconf.rb"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "rake-compiler"
  spec.add_dependency "rb_sys"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
