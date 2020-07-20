require './problems/senior_test.rb'
require './problems/vocals_test.rb'
require 'json'

problem = ARGV[0]
problem_args = ARGV[1..-1].join(' ')

case problem
when 'senior_test'
  parsed_args = eval(problem_args)
  puts SeniorTest.evaluate_seniority(parsed_args)
when 'vocals_test'
  puts VocalsTest.sum(problem_args)
else
  'Invalid arguments'  
end