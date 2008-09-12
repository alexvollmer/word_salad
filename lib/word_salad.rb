module WordSalad
  VERSION = '0.9.0'

  # Returns +num+ random words from the dictionary.
  def words(num)
    unless @dict
	if FileTest.exists?("/usr/share/dict/words")
        @dict = open("/usr/share/dict/words")
	elsif FileTest.exists?("/usr/share/words")
	  @dict = open("/usr/share/words")
      else
        raise "No dictionary file found!"
      end
      @size = File.size(@dict)
    end

    (1..num).to_a.map do |x|
      @dict.seek(rand(@size - 1000))
      b = @dict.readchar
      while b != 10
        b = @dict.readchar
      end

      @dict.readline.strip
    end
  end

  # Returns +num+ sentences of random words around +size+
  # number of words.
  def sentences(num, size=10)
    variance = size / 5
    (1..num).to_a.map do |x|
      w = words(size + (rand(variance) - variance / 2))
      w[0].capitalize!
      w.join(' ') + '.'
    end
  end

  # Returns +num+ paragraphs of around +psize+ sentences,
  # each around +ssize+ number of words
  def paragraphs(num, psize=5, ssize=10)
    (1..num).to_a.map do |x|
      sentences(psize).join(' ')
    end
  end

  protected
  def dictionary
    # TODO: figure out all the places dictionary files go
  end
end