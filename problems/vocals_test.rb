class VocalsTest
  
  VOCALS_HASH = {
    a: 0, e: 0, i: 0, o: 0, u: 0
  }.freeze
  
  class << self
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