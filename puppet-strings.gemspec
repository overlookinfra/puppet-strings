# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'puppet-strings/version'

Gem::Specification.new do |s|
  s.name = 'puppet-strings'
  s.author = 'Puppet Inc.'
  s.version = PuppetStrings::VERSION
  s.license = 'Apache-2.0'
  s.summary = 'Puppet documentation via YARD'
  s.email = 'info@puppet.com'
  s.homepage = 'https://github.com/puppetlabs/puppet-strings'
  s.required_ruby_version = '>= 2.7.0'

  s.extra_rdoc_files = [
    'CHANGELOG.md',
    'COMMITTERS.md',
    'CONTRIBUTING.md',
    'LICENSE',
    'README.md',
  ]
  s.files = Dir['CHANGELOG.md', 'README.md', 'LICENSE', 'lib/**/*', 'exe/**/*']

  s.add_runtime_dependency 'yard', '~> 0.9.5'
  s.add_runtime_dependency 'rgen', '~> 0.9.0'
  s.requirements << 'puppet, >= 6.0.0'
end
