require "word_salad/core_ext"

class WordSalad

  # The current dictionary path
  def self.dictionary_path
    @dictionary_path ||= ["/usr/share/dict/words",
                        "/usr/share/words"].select do |f|
      FileTest.exists?(f)
    end.first
  end

  # Override the default dictionary path to something special
  def self.dictionary_path=(path)
    @dictionary_path = path
    @size = nil
  end

  def self.dictionary # :nodoc:
    open(self.dictionary_path)
  end

  def self.size  # :nodoc:
    @size ||= File.size(self.dictionary)
  end

end
