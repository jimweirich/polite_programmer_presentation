require 're'
require 'happy_words/patterns'

module HappyWords
  def happy_words(text)
    text.scan(Patterns::HAPPY)
  end
end
