require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    #split the string on the period, then we can check the length of that index in the arr and if greater than 1 push it to the new array
    sentences = 0
    punc = [".", '?', '!']
    self.chars.each.with_index do |char, index|
      if punc.include?(char) && !punc.include?(self[index + 1])
        sentences += 1
      end
    end
    sentences
    #self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size
    
  end
end