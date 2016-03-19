class String
  def sentences
    gsub(/\n|\r/, ' ').split(/\.\s*/)
  end

  def words
    scan(/\w[\w\'\-]*/)
  end

  def self.best_sentences(sentences, desired_words)
    ranked_sentences = sentences.sort_by do |s|
      s.words.length - (s.downcase.words - desired_words).length
    end

    ranked_sentences.last
  end
end
