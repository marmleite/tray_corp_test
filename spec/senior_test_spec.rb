require './../problems/senior_test'

RSpec.describe SeniorTest do
  context "without skills" do
    it 'returns invalid argument' do
      person = []
      expect{SeniorTest.validate_skills(person)}.to raise_error('invalid argument')
    end      
  end
  
  context "with skill value above 5" do
    it "returns skill value can't be above 5" do
      person = [{ ruby: 7 }]
      expect{SeniorTest.validate_skills(person)}.to raise_error("skill value can't be above 5")
    end      
  end
  
  context "with skill value under 0" do
    it "returns skill value can't be negative" do
      person = [{ ruby: -1 }]
      expect{SeniorTest.validate_skills(person)}.to raise_error("skill value can't be negative")
    end      
  end
  
  context "with skills valid values" do
    it "returns skills values sum" do
      person = [{ ruby: 1, db: 1, agile: 0, pattern: 0  }]
      values_sum = person.first.values.sum
      expect(SeniorTest.sum_skills_values(person)).to eq(2)
    end      
  end

  context "with skills sum" do
    it "returns seniority level" do
      junior_level_sum = 2
      pleno_level_sum = 8
      senior_level_sum = 12
      expect(SeniorTest.seniority_level(junior_level_sum)).to eq('Júnior')
      expect(SeniorTest.seniority_level(pleno_level_sum)).to eq('Pleno')
      expect(SeniorTest.seniority_level(senior_level_sum)).to eq('Sênior')
    end      
  end
  
  context "with skills values sum equal or less than 7" do
    it "returns junior skills message" do
      person = [{ ruby: 1, db: 1, agile: 0, pattern: 0  }]
      values_sum = person.first.values.sum
      expect(SeniorTest.evaluate_seniority(person)).to eq("Júnior – Pontuação (#{values_sum} pontos)")
    end      
  end
  
  context "with skills values sum greather than 7 and less than or equal 11" do
    it "returns pleno skills message" do
      person = [{ ruby: 5, db: 3, agile: 1, pattern: 2 }]
      values_sum = person.first.values.sum
      expect(SeniorTest.evaluate_seniority(person)).to eq("Pleno – Pontuação (#{values_sum} pontos)")
    end      
  end

  context "with skills values sum greather than 11" do
    it "returns senior skills message" do
      person = [{ ruby: 5, db: 4, agile: 3, pattern: 3, server: 2 }]
      values_sum = person.first.values.sum
      expect(SeniorTest.evaluate_seniority(person)).to eq("Sênior – Pontuação (#{values_sum} pontos)")
    end      
  end
end