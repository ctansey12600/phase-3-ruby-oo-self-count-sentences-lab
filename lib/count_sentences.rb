require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # Takes self
    # splits self each time there is a ".","?", "!" present
    # Takes split sentence values in array filters each value (sentence)
    # Test if sentence is empty -> if sentence not empty -> remains in array
    # If sentence is emptry -> deleted from array
    # Then measures size of final array
    self.split(/\.|\?|\!/).filter { |sentence| !sentence.empty? }.size
  end
end