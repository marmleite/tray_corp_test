class VocalsTest
  
  VOCALS_HASH = {
    a: 0, e: 0, i: 0, o: 0, u: 0
  }.freeze
  
  class << self
    def sum(phrase)
      raise 'invalid argument' unless phrase.is_a? String
      hash = vocals_hash
      phrase_ary = phrase.split(%r{\s*})
      phrase_ary.each { |letter| add_count_vocal(hash, letter.downcase) }
      [hash]
    end

    def add_count_vocal(hash, letter)
      unless (letter =~ /[aeiou]/) == nil
        hash[letter.to_sym] += 1
      end
    end

    def vocals_hash
      VOCALS_HASH.dup
    end
  end
end