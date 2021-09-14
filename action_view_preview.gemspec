require_relative "lib/action_view_preview/version"

Gem::Specification.new do |spec|
  spec.name        = "action_view_preview"
  spec.version     = ActionViewPreview::VERSION
  spec.platform     = Gem::Platform::RUBY
  spec.authors     = ["Lucas Campanari"]
  spec.email       = ["campanari.ls@gmail.com"]
  spec.homepage    = "https://github.com/lcampanari/action_view_preview"
  spec.summary     = "Views preview for Rails"
  spec.description = "A development tool for rendering and debugging views that wouldn't otherwise be rendered in your application"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_development_dependency "rails", ">= 6.1"
end
