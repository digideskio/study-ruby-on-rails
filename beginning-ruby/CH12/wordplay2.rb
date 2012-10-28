class WordPlay

end

class String
  def sentences
    gsub(/\n|\r/, ' ').split(/\.\s*/)
  end
end

class String
  def words
    scan(/\w[\w\'\-]*/)
  end
end

p %q{Hello. This is a test of
basic sentence splitting. It
even works over multiple lines.}.sentences

p %q{Hello. This is a test of
basic sentence splitting. It
even works over multiple lines.}.sentences[1].words[3]



hot_words = %w{test ruby}
my_string = "This is a test. Dull sentence here. Ruby is great. So is cake."
my_string.sentences.find_all do |s|
  s.downcase.words.and? {|word| hot_words.include?(word)}
end