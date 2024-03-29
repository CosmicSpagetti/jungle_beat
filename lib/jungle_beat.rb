class JungleBeat 
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(several_words)
    several_words.split(" ").each do |word|
      @list.append(word)
    end
  end

  def count
    @list.count
  end

  def play
    `say -r 200 "#{@list.to_string}"` 
  end
end