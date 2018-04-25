
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "combinate/version"

Gem::Specification.new do |spec|
  spec.name          = "combinate"
  spec.version       = Combinate::VERSION
  spec.authors       = ["Ed Carrel"]
  spec.email         = ["ed@carrel.org"]

  spec.summary       = %q{Creates an array of all choices from amongst an array of arrays}
  spec.description   = %q{A simple utility gem that combines all products of all combinations of an array of arrays, including combinations where some or all of the arrays are not chosen from at all.}

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

