# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'guard/protobuf/version'

Gem::Specification.new do |s|
  s.name        = 'guard-protobuf'
  s.version     = Guard::ProtobufVersion::VERSION
  s.authors     = ['Jason Whittle']
  s.email       = ['jason.whittle@gmail.com']
  s.homepage    = 'http://rubygems.org/gems/guard-protobuf'
  s.summary     = 'Guard gem for ruby_protobuf'
  s.description = 'Guard::Protobuf automatically compiles .proto' \
                  'definitions into Ruby classes.'

  s.rubyforge_project = 'guard-protobuf'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'guard'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rb-fsevent'
  s.add_development_dependency 'guard-bundler'
  s.add_development_dependency 'guard-rspec'
end
