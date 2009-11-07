class Fixnum

  # Returns +num+ random words from the dictionary.
  def words
    dict = WordSalad.dictionary
    (1..self).to_a.map do |x|
      dict.seek(rand(WordSalad.size - 1000))
      b = dict.readchar
      while b != 10
        b = dict.readchar
      end

      dict.readline.strip
    end
  end

  alias :word :words

  # Returns +num+ sentences of random words around +size+
  # number of words.
  def sentences(size=10)
    variance = size / 5
    (1..self).to_a.map do |x|
      w = (size + (rand(variance) - variance / 2)).words
      w[0].capitalize!
      w.join(' ') + '.'
    end
  end

  alias :sentence :sentences

  # Returns +num+ paragraphs of around +psize+ sentences,
  # each around +ssize+ number of words
  def paragraphs(psize=5, ssize=10)
    (1..self).to_a.map do |x|
      psize.sentences.join(' ')
    end
  end

  alias :paragraph :paragraphs
end

