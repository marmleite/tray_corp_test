require './../problems/senior_test'

RSpec.describe SeniorTest do
  context "without skills" do
    it 'returns invalid argument' do
      person = []
      expect(SeniorTest.validate_skills(person)).to eq('invalid argument')
    end      
  end
  context "with skill value above 5" do
    it "returns skill value can't be above 5" do
      person = [{ ruby: 7 }]
      expect(SeniorTest.validate_skills(person)).to eq("skill value can't be above 5")
    end      
  end
  context "with skill value under 0" do
    it "returns skill value can't be negative" do
      person = [{ ruby: -1 }]
      expect(SeniorTest.validate_skills(person)).to eq("skill value can't be negative")
    end      
  end
  context "with skills valid values" do
    it "returns skills values sum" do
      person = [{ ruby: 1, db: 1, agile: 0, pattern: 0  }]
      values_sum = person.first.values.sum
      expect(SeniorTest.sum_skills_values(person)).to eq(2)
    end      
  end
  context "with skills values sum equal or less than 7" do
    it "returns junior skills message" do
      person = [{ ruby: 1, db: 1, agile: 0, pattern: 0  }]
      values_sum = person.first.values.sum
      expect(SeniorTest.evaluate_seniority(person)).to eq("Júnior – Pontuação (#{values_sum} pontos)")
    end      
  end
end