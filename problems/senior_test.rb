class SeniorTest
  class << self
    def validate_skills(person = [])
      error = 'invalid argument' if person.empty?
      person.each { |skill_set| error = validate_skill_values(skill_set.values) }
      error
    end
  
    def validate_skill_values(values)
      error = "skill value can't be above 5"  if values.any? { |value| value > 5 }
      error = "skill value can't be negative"  if values.any? { |value| value < 0 }
      error
    end
  end
end