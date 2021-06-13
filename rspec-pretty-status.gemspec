# frozen_string_literal: true

require_relative 'lib/rspec/pretty/status/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec-pretty-status'
  spec.version       = Rspec::Pretty::Status::VERSION
  spec.authors       = ['Artem Shevchenko']
  spec.email         = ['artemsheva0510@gmail.com']

  spec.summary       = 'Pretty response status as in rspec-rails'
  spec.homepage      = 'https://github.com/Ar2emis/rspec-pretty-status'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.2')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.require_paths = ['lib']

  spec.add_development_dependency 'lefthook', '~> 0.7.2'
  spec.add_development_dependency 'pry', '~> 0.14.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 1.14.0'
  spec.add_development_dependency 'rubocop-performance', '~> 1.10.2'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.2.0'

  spec.add_dependency 'rspec'
end
