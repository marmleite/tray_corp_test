class SeniorTest
  class << self
    def evaluate_seniority(person = [])
      error_message = validate_skills(person)
      skills_sum = sum_skills_values(person)
      level = seniority_level(skills_sum)
      "#{level} – Pontuação (#{skills_sum} pontos)"
    end

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

    def sum_skills_values(person)
      skill_set_sum = person.map { |skill_set| skill_set.values.sum }
      skill_set_sum.sum
    end

    def seniority_level(skills_sum)
      case skills_sum
      when 0..7 
        'Júnior'
      when 8..11
        'Pleno'
      else
        'Sênior'
      end
    end
  end
end