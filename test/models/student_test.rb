require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should have the necessary required validators" do
    student = Student.new
    assert_not student.valid?
    assert_equal [:name, :last_name], student.errors.keys

    student.name = "Aurélien"
    student.last_name = "Vasseur"
    assert student.valid?
  end

end
