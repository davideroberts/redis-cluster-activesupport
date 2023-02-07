lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "redis-cluster-activesupport"
  spec.version       = "0.4.0.rc1"
  spec.authors       = ["Garrett Thornburg"]
  spec.email         = ["film42@gmail.com"]

  spec.summary       = "Extension to redis-cache-store for working with redis cluster"
  spec.description   = "Extension to redis-cache-store for working with redis cluster"
  spec.homepage      = "https://github.com/film42/redis-cluster-activesupport"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 5.2"
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "fakeredis"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
