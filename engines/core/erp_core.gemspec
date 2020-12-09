$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "erp/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "erp_core"
  spec.version     = Erp::Core::VERSION
  spec.authors     = ["patrick204nqh"]
  spec.email       = ["patrick204nqh@gmail.com"]
  spec.summary     = "Summary of Core."
  spec.description = "Description of Core."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.4", ">= 5.2.4.4"

  spec.add_dependency "devise"
  spec.add_dependency "sass-rails"
  spec.add_dependency "bootstrap"
  spec.add_dependency "webpacker"
  spec.add_dependency "tailwindcss"
  spec.add_dependency "securerandom"
  spec.add_dependency "carrierwave"
  spec.add_dependency 'mini_magick'
end
