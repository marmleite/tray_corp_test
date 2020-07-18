require './../problems/senior_test'

RSpec.describe SeniorTest do
  context "without skills" do
    it 'returns invalid argument' do
      person = []
      expect(SeniorTest.validate_skills(person)).to eq('invalid argument')
    end      
  end
  context "with skill value above 5" do
    it 'returns invalid argument' do
      person = [{ ruby: 7 }]
      expect(SeniorTest.validate_skills(person)).to eq("skill value can't be above 5")
    end      
  end
end