  
class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    session[:form_params] = params.inspect
    Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to new_student_path
  end

  private

    def to_s
      "#{self.first_name} #{self.last_name}"
    end

    def set_student
      @student = Student.find_by_id(params[:id])
    end

end