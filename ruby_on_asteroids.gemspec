# frozen_string_literal: true

require_relative "lib/ruby_on_asteroids/version"

Gem::Specification.new do |spec|
  spec.name          = "ruby_on_asteroids"
  spec.version       = RubyOnAsteroids::VERSION
  spec.authors       = ["MatiasFernandez"]
  spec.email         = ["mfernandez@10pines.com"]

  spec.summary       = "A gem with useful tools to expand Ruby language and make it more powerful."
  spec.homepage      = "https://github.com/10Pines/ruby_on_asteroids"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/10Pines/ruby_on_asteroids"
  spec.metadata["changelog_uri"] = "https://github.com/10Pines/ruby_on_asteroids/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "overcommit", "~> 0.58"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.12.0"
  spec.add_development_dependency "rubocop-performance", "~> 1.10"
  spec.add_development_dependency "rubocop-rake", "~> 0.5"
  spec.add_development_dependency "rubocop-rspec", "~> 2.2"
  spec.add_development_dependency "rubocop-thread_safety", "~> 0.4"
end
