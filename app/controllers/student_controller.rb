class StudentController < ApplicationController
  def new
    @student= Student.new
  end

  def create
    @student= Student.new([:student])
    if(@student.save)
      redirect_to new_student_patch
  end
end
