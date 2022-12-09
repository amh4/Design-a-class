class GrammarStats
  def initialize
    @passed_sentences = 0
    @failed_sentences = 0
  end

  def check(sentence) 
    fail "Not a sentence." if sentence.empty?
    has_caps = sentence[0] == sentence[0].upcase
    last_char = [".", "!", "?"].include? sentence[-1]
  
    if has_caps != true || last_char != true
      @failed_sentences += 1
      return false
    else
      @passed_sentences += 1
      return true
    end
  end

  def percentage_good
    percent = @passed_sentences / (@failed_sentences + @passed_sentences).to_f
    return percent.round(2) * 100
  end
end