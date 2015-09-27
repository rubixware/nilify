# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nilify/version'

Gem::Specification.new do |s|
  s.name        = 'nilify'
  s.version     = Nilify::VERSION
  s.summary     = %q{Provides methods for null object pattern implementation }
  s.description = %q{A ruby gem to add mock methods following NOP}
  s.authors     = ["Everardo Medina"]
  s.email       = 'emedina@rubixware.com'
  s.files       = `git ls-files`.split($/)
  s.homepage    = 'http://rubygems.org/gems/hola'
  s.license     = 'MIT'
end
