require './problems/senior_test.rb'
require './problems/vocals_test.rb'
require 'json'

problem = ARGV[0]
problem_args = ARGV[1..-1].join(' ')

case problem
when 'senior_test'
  begin
    parsed_args = eval(problem_args)
    puts SeniorTest.evaluate_seniority(parsed_args)
  rescue => exception
    puts exception.message    
  end
when 'vocals_test'
  begin
    puts VocalsTest.sum(problem_args)
  rescue => exception
    puts exception.message    
  end
else
  puts 'Invalid problem!'
  puts 'Choose a valid problem: senior_test or vocals_test.'
  puts "EX: $ ./run vocals_test 'message to count vocals'"
  puts 'See README for more details.'
end