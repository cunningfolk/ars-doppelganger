source 'https://rubygems.org'

# Specify your gem's dependencies in ars-doppelganger.gemspec
gemspec

%w[ars-familiar].each do |lib|
  lib_path = File.expand_path("../../#{lib}", __FILE__)
  lib_path = false unless File.exists? lib_path
  if lib_path
    gem lib, :path => lib_path
  end
end

gem 'yard', require: false

eval File.read('Gemfile.local') if File.exist?('Gemfile.local')
