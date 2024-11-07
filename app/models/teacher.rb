class Teacher < ApplicationRecord
    has_secure_password 
    before_create :generate_teacher_id

    def self.teacher_exists?(name)
      where(name: name).exists?
    end
    
    private
  
    def generate_teacher_id
      self.teacher_id = loop do
        random_id = "TCHR#{SecureRandom.hex(3).upcase}"
        break random_id unless Teacher.exists?(teacher_id: random_id)
      end
    end
end
