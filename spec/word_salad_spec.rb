require "rubygems"
require "spec"
require File.join(File.dirname(__FILE__), "../lib/word_salad")

include WordSalad

describe WordSalad do
  describe "generating random words" do
    it "should return an array of the right size" do
      w = words(5)
      w.should be_kind_of(Array)
      w.size.should eql(5)
      w.each do |word|
        word.should be_kind_of(String)
      end
    end
  end

  describe "generating random sentences" do
    it "should return an array of sentences" do
      s = sentences(5)
      s.should be_kind_of(Array)
      s.size.should == 5
      s.each do |sent|
        sent.should be_kind_of(String)
        sent.should match(/^[A-Z].*\.$/)
        sent.split(' ').size.should be_close(10, 2)
      end
    end
  end

  describe "generating random paragraphs" do
    it "should return an array of paragraphs" do
      p = paragraphs(5)
      p.should be_kind_of(Array)
      p.size.should == 5
      p.each do |para|
        para.should be_kind_of(String)
        s = para.split('.')
        s.size.should == 5
        s.each do |sent|
          sent.split(' ').size.should be_close(10, 2)
        end
      end
    end
  end
end