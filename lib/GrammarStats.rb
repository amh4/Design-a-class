class GrammarStats
  def initialize
    
  end

  def check(sentence) 
    fail "Not a sentence." if sentence.empty?
    has_caps = sentence[0] == sentence[0].upcase
    last_char = [".", "!", "?"].include? sentence[-1]
  
    if has_caps != true
      return false
    elsif last_char != true
      return false
    else
      return true
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end