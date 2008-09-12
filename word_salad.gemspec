Gem::Specification.new do |s|
  s.name = %q{word_salad}
  s.version = "0.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alex Vollmer"]
  s.date = %q{2008-09-12}
  s.description = %q{== SYNOPSIS:}
  s.email = ["alex.vollmer@gmail.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "lib/word_salad.rb", "spec/word_salad_spec.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://livollmers.net}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{wordsalad}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Generate strings of random English text}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_development_dependency(%q<rspec>, [">= 1.1.1"])
      s.add_development_dependency(%q<hoe>, [">= 1.7.0"])
    else
      s.add_dependency(%q<rspec>, [">= 1.1.1"])
      s.add_dependency(%q<hoe>, [">= 1.7.0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.1.1"])
    s.add_dependency(%q<hoe>, [">= 1.7.0"])
  end
end
