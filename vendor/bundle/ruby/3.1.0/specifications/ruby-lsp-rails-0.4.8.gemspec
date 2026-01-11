# -*- encoding: utf-8 -*-
# stub: ruby-lsp-rails 0.4.8 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-lsp-rails".freeze
  s.version = "0.4.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org", "changelog_uri" => "https://github.com/Shopify/ruby-lsp-rails/releases", "documentation_uri" => "https://shopify.github.io/ruby-lsp/rails-add-on.html", "homepage_uri" => "https://github.com/Shopify/ruby-lsp-rails", "source_code_uri" => "https://github.com/Shopify/ruby-lsp-rails" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Shopify".freeze]
  s.date = "1980-01-02"
  s.description = "A Ruby LSP addon that adds extra editor functionality for Rails applications".freeze
  s.email = ["ruby@shopify.com".freeze]
  s.homepage = "https://github.com/Shopify/ruby-lsp-rails".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0.0".freeze)
  s.rubygems_version = "3.3.27".freeze
  s.summary = "A Ruby LSP addon for Rails".freeze

  s.installed_by_version = "3.3.27" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<ruby-lsp>.freeze, [">= 0.26.0", "< 0.27.0"])
  else
    s.add_dependency(%q<ruby-lsp>.freeze, [">= 0.26.0", "< 0.27.0"])
  end
end
