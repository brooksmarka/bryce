Gem::Specification.new do |s|
   s.name          = 'bryce'
   s.version       = '0.0.1'
   s.date          = '2017-10-26'
   s.summary       = 'Bryce API Client'
   s.description   = 'A client for the Bloc API'
   s.authors       = ['Mark Brooks']
   s.email         = 'markabrooks@gmail.com'
   s.files         = ['lib/bryce.rb', 'lib/roadmap.rb']
   s.require_paths = ["lib"]
   s.homepage      =
     'http://rubygems.org/gems/bryce'
   s.license       = 'MIT'
   s.add_runtime_dependency 'httparty', '~> 0.13'

 end
