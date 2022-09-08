Gem::Specification.new do |spec|
  spec.name                  = 'ontology'
  spec.version               = "0.0.0"
  spec.authors               = ['Noman Khalid']
  spec.email                 = ['noman.khalid.freelance@gmail.com']
  spec.summary               = 'Interacts with Ontology Lookup Service API'
  spec.description           = 'This gem involves creating some basic code to interact with the Ontology Lookup Service,using their REST API to fetch some information, and then display it in a suitable format'
  spec.homepage              = 'https://github.com/dev-nomi/ontology'
  spec.license               = 'MIT'
  spec.required_ruby_version = '>= 2.7.4'

  spec.files = Dir['README.md', 'LICENSE',
                   'lib/ontology_api.rb',
                   'ontology.gemspec', '.github/*.md',
                   'Gemfile']
  spec.extra_rdoc_files = ['README.md']
  spec.require_paths    = ['lib']

  spec.add_dependency 'httparty', '~> 0.20.0'

  spec.metadata = {
    'rubygems_mfa_required' => 'true'
  }
end