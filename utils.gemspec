# frozen_string_literal: true

require_relative "lib/utils/version"

Gem::Specification.new do |spec|
  spec.name        = "utils"
  spec.version     = Utils::VERSION
  spec.authors     = ["SDSHUBHAMSHARMA"]
  spec.email       = ["sd.shubhamsharma@gmail.com"]
  spec.files         = Dir["lib/**/*.rb"]

  spec.summary     = "A utility gem for common validations."
  spec.description = "Utils is a gem that provides common validation methods for email, phone number, blank, number, and empty checks, usable across multiple projects."
  spec.homepage    = "https://github.com/SDSHARMASHUBHAM/utils" # Replace with the actual repository URL.
  spec.license     = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  # Set metadata URLs to meaningful links
  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"]      = spec.homepage
  spec.metadata["source_code_uri"]   = "https://github.com/SDSHARMASHUBHAM/utils" # Replace with your repo URL
  spec.metadata["changelog_uri"]     = "https://github.com/SDSHARMASHUBHAM/utils/CHANGELOG.md" # Optional, if you add a CHANGELOG.md file

  # Specify which files should be included in the gem package
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Add dependencies if required
  # spec.add_dependency "example-gem", "~> 1.0"
end
