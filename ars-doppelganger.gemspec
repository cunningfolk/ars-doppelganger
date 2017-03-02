# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ars/doppelganger/version'

Gem::Specification.new do |spec|
  spec.name          = "ars-doppelganger"
  spec.version       = Ars::Doppelganger::VERSION
  spec.authors       = ["Michael Lee Vazquez"]
  spec.email         = ["magnus.nothus@gmail.com"]

  spec.summary       = %q{ars-doppelganger-#{Ars::Doppelganger::VERSION}}
  spec.description   = %q{Ruby Model that can exhibit attributes from another Object}
  spec.homepage      = "http://github.com/cunningfolk/ars-doppelganger"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  %w[familiar].each do |lib_name|
    if Ars::Doppelganger::VERSION =~ /[a-zA-Z]+/
      spec.add_runtime_dependency "ars-#{lib_name}", "= #{Ars::Doppelganger::VERSION}"
    else
      spec.add_runtime_dependency "ars-#{lib_name}", "~> #{Ars::Doppelganger::VERSION.sub(/^((?:\d+\.){2}).*$/, '\10')}"
    end
  end

end
