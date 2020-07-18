require './../problems/senior_test'

RSpec.describe SeniorTest do
  context "without skills" do
    it 'returns invalid argument' do
      person = []
      expect(SeniorTest.validate_skills(person)).to eq('invalid argument')
    end      
  end
end