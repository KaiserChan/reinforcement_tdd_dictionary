class Dictionary

  def initialize(hash={})
    @d = hash
  end

  def entries
    @d
  end

  def include?(key=nil)
    @d.has_key?(key)
  end

  def add(hash)
    @d[hash.keys.join] = hash.values.join
  end

  def find(string)
    if @d.has_key?(string)
      return @d.first
    end
  end

  def keywords
    @d.keys.sort
  end

end
