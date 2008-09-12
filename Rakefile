# -*- ruby -*-

require 'rubygems'
require 'hoe'
require './lib/word_salad.rb'

Hoe.new('WordSalad', WordSalad::VERSION) do |p|
  # p.rubyforge_name = 'WordSaladx' # if different than lowercase project name
  p.name = 'word_salad'
  p.developer('Alex Vollmer', 'alex.vollmer@gmail.com')
  p.description = p.paragraphs_of('README.txt', 3..3).join("\n\n")
  p.summary = 'Generate strings of random English text'
  p.url = 'http://livollmers.net'
  p.changes = p.paragraphs_of('History.txt', 0..1).join("\n\n")
  p.extra_dev_deps << ["rspec", ">=1.1.1"]
end

require "spec/rake/spectask"
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
end

# vim: syntax=Ruby
