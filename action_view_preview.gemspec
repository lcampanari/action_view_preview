require_relative "lib/action_view_preview/version"

Gem::Specification.new do |spec|
  spec.name        = "action_view_preview"
  spec.version     = ActionViewPreview::VERSION
  spec.platform     = Gem::Platform::RUBY
  spec.authors     = ["Lucas Campanari"]
  spec.email       = ["campanari.ls@gmail.com"]
  spec.homepage    = "https://github.com/lcampanari/action_view_preview"
  spec.summary     = "Views preview for Rails"
  spec.description = "Views preview for Rails"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.3", ">= 6.1.3.1"
end
