# frozen_string_literal: true

require_relative 'lib/salieri/version'

Gem::Specification.new do |spec|
  spec.name = 'salieri'
  spec.version = Salieri::VERSION
  spec.authors = ['Luna Nova']
  spec.email = ['her@mint.lgbt']

  spec.summary = 'A nice and simple library for building visual novels'
  spec.homepage = 'https://github.com/lunaisnotaboy/salieri'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/lunaisnotaboy/salieri'
  spec.metadata['changelog_uri'] = "#{spec.metadata['source_code_uri']}/blob/develop/CHANGELOG.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.extensions = ['ext/salieri/extconf.rb']
  spec.metadata['rubygems_mfa_required'] = 'true'
end
