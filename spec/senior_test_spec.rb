require 'senior_test'

RSpec.describe SeniorTest do
  context "with invalid argument" do
    it 'returns invalid argument' do
      expect(SeniorTest.evaluate_seniority).to eq('invalid argument')
    end      
  end
end