require 'minitest/autorun'
require 'minitest/emoji'
require './lib/student.rb'

class StudentTest < Minitest::Test

  def setup
    @morgan = Student.new({name: "Morgan", age: 21})
  end

  def test_it_exists

    assert_instance_of Student, @morgan
  end

  def test_it_has_attributes

    assert_equal "Morgan", @morgan.name
    assert_equal 21, @morgan.age
  end

  def test_scores_initializes_as_empty_array
    assert_equal [], @morgan.scores
  end

  def test_log_scores_method
    @morgan.log_score(89)
    @morgan.log_score(78)

    assert_equal [89, 78], @morgan.scores
  end

  def test_grade_method_averages_scores
    @morgan.log_score(89)
    @morgan.log_score(78)

    assert_equal 83.5, @morgan.grade
  end

end
