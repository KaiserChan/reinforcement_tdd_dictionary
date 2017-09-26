class Dictionary

  def initialize
    @d = {}
  end

  def entries
    @d
  end

  def include?(word)
    @d.has_key?(word)
  end

  def add(entry)
    if entry.is_a?(Hash)
      @d.merge!(entry)
    else
      @d[entry] = nil;
    end
  end

  def find(word)
    @d.select do |k, v|
      k.start_with?(word)
    end
  end

  def keywords
    @d.keys.sort
  end

end
