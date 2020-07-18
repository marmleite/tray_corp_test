require './../problems/vocals_test'

RSpec.describe VocalsTest do
  context "argument is not a String" do
    it "returns invalid argument" do
      expect{VocalsTest.sum(nil)}.to raise_error('invalid argument')
    end
  end
end