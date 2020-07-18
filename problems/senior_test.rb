class SeniorTest
  class << self
    def validate_skills(person = [])
      if person.empty?
        return 'invalid argument'
      end
    end
  end
end