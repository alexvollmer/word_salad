require "fileutils"
require "tempfile"
require "rubygems"
require "spec"

$:.unshift(File.join(File.dirname(__FILE__), "..", "lib"))
require "word_salad"

describe WordSalad do
  describe "generating random words" do
    it "should return an array of the right size" do
      w = 5.words
      w.should be_kind_of(Array)
      w.size.should eql(5)
      w.each do |word|
        word.should be_kind_of(String)
      end
    end

    it "should respond to the singular version too" do
      w = 1.word
      w.should be_kind_of(Array)
      w.size.should == 1
      w.first.should be_kind_of(String)
    end
  end

  describe "generating random sentences" do
    it "should return an array of sentences" do
      s = 5.sentences
      s.should be_kind_of(Array)
      s.size.should == 5
      s.each do |sent|
        sent.should be_kind_of(String)
        sent.should match(/^[A-Z].*\.$/)
        sent.split(' ').size.should be_close(10, 2)
      end
    end

    it "should respond to the singular version too" do
      s = 1.sentence
      s.should be_kind_of(Array)
      s.size.should == 1
    end
  end

  describe "generating random paragraphs" do
    it "should return an array of paragraphs" do
      p = 5.paragraphs
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

    it "should respond to singular version too" do
      p = 1.paragraph
      p.should be_kind_of(Array)
      p.size.should == 1
    end
  end

  describe 'overriding the default dictionary path' do
    before(:each) do
      @tmpfile = Tempfile.new "word_salad"
      2000.times { @tmpfile << "alpha\n" }
      @tmpfile.close
      WordSalad.dictionary_path = @tmpfile.path
    end

    it 'should work for words' do
      w = 5.words
      w.each { |e| e.should == "alpha" }
    end

    it 'should work for sentences' do
      s = 5.sentences
      s.each do |sent|
        sent.split(' ').each { |e| e.downcase.should match(/alpha/) }
      end
    end

    it 'should work for paragraphs' do
      p = 5.paragraphs
      p.each do |para|
        para.split('.').each do |sent|
          sent.split(' ').each { |e| e.downcase.should match(/alpha/) }
        end
      end
    end
  end
end
