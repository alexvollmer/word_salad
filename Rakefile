# -*- ruby -*-

require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "word-salad"
    gem.summary = %Q{Generate strings of random English text}
    gem.description = %Q{Word Salad is a very simple Ruby library for generating random strings of English words based on the Unix dictionary file.}
    gem.email = "alex.vollmer@gmail.com"
    gem.homepage = "http://github.com/alexvollmer/word_salad"
    gem.authors = ["Alex Vollmer"]
    gem.files = FileList["lib/**/*.rb", "spec/**/*"]

    gem.add_development_dependency "rspec"
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available."
end

require "spec/rake/spectask"
Spec::Rake::SpecTask.new do |t|
  t.libs << 'lib' << 'spec'
  t.spec_files = FileList['spec/**/*_spec.rb']
end

# vim: syntax=Ruby
