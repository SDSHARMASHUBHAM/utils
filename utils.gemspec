# frozen_string_literal: true

require_relative "lib/utils/version"

Gem::Specification.new do |spec|
  spec.name        = "utils"
  spec.version     = Utils::VERSION
  spec.authors     = ["SDSHUBHAMSHARMA"]
  spec.email       = ["sd.shubhamsharma@gmail.com"]

  spec.summary     = "A utility gem for common validations."
  spec.description = "Utils provides common validation methods for emails, phone numbers, blank values, numbers, and empty collections."
  spec.homepage    = "https://github.com/SDSHARMASHUBHAM/utils"
  spec.license     = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  # Set metadata URLs
  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"]      = spec.homepage
  spec.metadata["source_code_uri"]   = "https://github.com/SDSHARMASHUBHAM/utils"
  spec.metadata["changelog_uri"]     = "https://github.com/SDSHARMASHUBHAM/utils/CHANGELOG.md"

  # Specify which files should be added to the gem
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) || f.end_with?(".gem") || f.start_with?("test/", "spec/", "features/", ".git", "appveyor")
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Add dependencies (if any)
  # spec.add_dependency "example-gem", "~> 1.0"
end
