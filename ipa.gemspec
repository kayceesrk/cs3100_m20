# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "ipa"
  spec.version       = "0.1.0"
  spec.authors       = ["KC Sivaramakrishnan"]
  spec.email         = ["kc@kcsrk.info"]

  spec.summary       = "CS3100 IITM Theme"
	spec.homepage      = "http://cs3100_m20.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.6"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 12.3"
end
