# frozen_string_literal: true

require_relative 'lib/ruby_crawler/meta'

Gem::Specification.new do |spec|
  spec.name        = RubyCrawler::SLUG
  spec.version     = RubyCrawler::VERSION
  spec.license     = RubyCrawler::LICENSE
  spec.author      = RubyCrawler::AUTHOR
  spec.email       = RubyCrawler::AUTHOR_EMAIL
  spec.summary     = RubyCrawler::DESCRIPTION
  spec.homepage    = 'https://github.com/Nereare/ruby_crawler'

  spec.required_ruby_version = '~> 3.2'

  spec.metadata['source_code_uri']       = spec.homepage
  spec.metadata['bug_tracker_uri']       = 'https://github.com/Nereare/ruby_crawler/issues'
  spec.metadata['changelog_uri']         = 'https://github.com/Nereare/ruby_crawler/blob/master/CHANGELOG.md'
  spec.metadata['documentation_uri']     = 'https://nereare.github.io/ruby_crawler/'
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.files = Dir[
    'config/locales/*.yml',
    'lib/**/*.rb',
    'sig/*',
    'spec/*.rb',
    '.ruby-version',
    'LICENSE.md',
    'Rakefile'
  ]
  spec.executables   = 'ruby_crawler'
  spec.require_paths = %w[lib config]

  spec.add_dependency 'i18n', '~> 1.14', '>= 1.14.7'
  spec.add_dependency 'ruby2d', '~> 0.12.1'

  spec.add_development_dependency 'rake', '~> 13.3'
  spec.add_development_dependency 'rdoc', '~> 6.15'
  spec.add_development_dependency 'rspec', '~> 3.13'
  spec.add_development_dependency 'rubocop', '~> 1.81', '>= 1.81.1'
  spec.add_development_dependency 'rubocop-rake', '~> 0.7.1'
  spec.add_development_dependency 'rubocop-rspec', '~> 3.7'
end
