class SeniorTest
  class << self
    def validate_skills(person = [])
      error = 'invalid argument' if person.empty?
      if person.any? { |skill_set| validate_skill_values(skill_set.values) }
        error = "skill value can't be above 5"
      end
      return error
    end

    def validate_skill_values(values)
      values.any? { |value| value > 5 }
    end
  end
end