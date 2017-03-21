class ManualReverse
  def go(string)
    size = string.length
    final_word = ""
    while size >  0
      size -= 1
      final_word += string[size]
    end
    final_word
  end
end