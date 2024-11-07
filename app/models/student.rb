class Student < ApplicationRecord
    #validates :marks, numericality: { only_integer: true, less_than_or_equal_to: 100, message: "should be out of 100" }
# Callback to generate student_id before saving the record
  before_create :generate_student_id

  private

  # Method to generate a unique student_id
  def generate_student_id
    # Generate a unique student_id (e.g., STU-001, STU-002, etc.)
    self.student_id = "STU-" + (Student.maximum(:id).to_i + 1).to_s.rjust(3, '0')
  end
end
