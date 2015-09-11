require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz2'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz2
   	end.new
	end

	# TODO - write tests here
	def without_doubles_test
		assert_equals 9, @m.without_doubles(4, 5, false)
		assert_equals 9, @m.without_doubles(4, 4, true)
		assert_equals 7, @m.without_doubles(6, 6, true)
end
