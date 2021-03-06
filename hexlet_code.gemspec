# frozen_string_literal: true

require_relative 'lib/hexlet_code/version'

Gem::Specification.new do |spec|
  spec.name = 'hexlet_code'
  spec.version = HexletCode::VERSION
  spec.authors = ['alexey-melekhov']
  spec.email = ['alexey-melekhov1989@yandex.ru']

  spec.summary = 'generate_form'
  spec.description = 'generate_form'
  spec.homepage = 'https://github.com/leshasmp/rails-project-lvl1'
  spec.required_ruby_version = '>= 2.5.0'

  spec.metadata['allowed_push_host'] = "TODO: Set to your gem server 'https://example.com'"
  spec.metadata = {
    'rubygems_mfa_required' => 'true'
  }

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/leshasmp/rails-project-lvl1'
  spec.metadata['changelog_uri'] = 'https://github.com/leshasmp/rails-project-lvl1'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport'
end
