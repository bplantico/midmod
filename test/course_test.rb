require 'minitest/autorun'
require 'minitest/emoji'
require './lib/student'
require './lib/course'

class CourseTest < Minitest::Test

  def setup
  @course = Course.new("Calculus", 2)
  @morgan = Student.new({name: "Morgan", age: 21})
  @jordan = Student.new({name: "Jordan", age: 29})
  end

  def test_it_exists
    assert_instance_of Course, @course
  end

  def test_it_has_attributes
    assert_equal "Calculus", @course.name
    assert_equal 2, @course.capacity
  end

  def test_students_initializes_as_empty_array
    assert_equal [], @course.students
  end

  def test_not_full_by_default
    assert_equal false, @course.full?
  end

  def test_enroll_method
    @course.enroll(@morgan)
    @course.enroll(@jordan)

    assert_equal [@morgan, @jordan], @course.students
    assert @course.full?
  end
end
