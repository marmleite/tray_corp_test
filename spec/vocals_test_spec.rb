require './../problems/vocals_test'

RSpec.describe VocalsTest do
  context 'argument is not a String' do
    it 'returns invalid argument' do
      expect{VocalsTest.sum(nil)}.to raise_error('invalid argument')
    end
  end

  context 'pass a letter with hash to count' do
    it 'returns vocals hash with count ' do
      vocals_hash = VocalsTest.vocals_hash
      VocalsTest.add_count_vocal(vocals_hash, 'a') 
      expect(vocals_hash).to eq({ a: 1, e: 0, i: 0, o: 0, u: 0 })
    end
  end

  context 'phrase without vocals' do
    it 'returns vocals with 0 count' do
      vocals = [{ a: 0, e: 0, i: 0, o: 0, u: 0 }]
      expect(VocalsTest.sum('')).to eq([VocalsTest::VOCALS_HASH]).and eq(vocals)
    end
  end

  context 'phrase with vocals and consonants' do
    it 'returns just vocals count' do
      phrase = 'O cachorro uiva faz auuuuu para a lua'
      expect(VocalsTest.sum(phrase)).to eq([{a: 8, e: 0, i: 1, o: 3, u: 7}])
    end
  end
end