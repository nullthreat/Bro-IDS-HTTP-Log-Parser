# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'bro_ids/http/log/version'

Gem::Specification.new do |s|
  s.name        = "bro_ids-http-log"
  s.version     = BroIds::Http::Log::VERSION
  s.authors     = ["Elliott Cutright"]
  s.email       = ["elliott.cutright@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Ruby Gem for Parsing Bro IDS HTTP Logs}
  s.description = %q{Ruby Gem for Parsing Bro IDS HTTP Logs}

  s.rubyforge_project = "bro_ids-http-log"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
