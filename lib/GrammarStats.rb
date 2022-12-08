class GrammarStats
  def initialize

    @passed_sentences = []
    @failed_sentences = []
  end

  def check(sentence) 
    fail "Not a sentence." if sentence.empty?
    has_caps = sentence[0] == sentence[0].upcase
    last_char = [".", "!", "?"].include? sentence[-1]
  
    if has_caps != true
      @failed_sentences << sentence
      return false
    elsif last_char != true
      @failed_sentences << sentence
      return false
    else
      @passed_sentences << sentence
      return true
    end
  end

  def percentage_good
    failed = @failed_sentences.length
    passed = @passed_sentences.length
    percent_int = passed / (failed + passed).to_f
    return percent_int.round(2) * 100
  end
end