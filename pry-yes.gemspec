# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "pry-yes"
  spec.version       = "0.0.1"
  spec.authors       = ["Christoffer Hamberg"]
  spec.email         = ["christoffer.hamberg@gmail.com"]

  spec.summary       = %q{Pry plugin for re-running the previous command with "Did you mean?" suggestion.}
  spec.homepage      = "https://github.com/christofferh/pry-yes"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'pry', '~> 0.10.0'
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
