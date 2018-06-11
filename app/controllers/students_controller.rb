class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

    def create
      session[:form_params] = params.inspect
      redirect_to new_student_path
    end

    private

      def set_student
        @student = Student.find(params[:id])
      end
  end
  
#   def create
#       @student = Student.create(student_params)
#         if @student.save
#         link_to new_student_path
#         else
#           flash.now[:error] = "Could not save student"
#           render "new"
#         end
#     end
#
#    def student_params
#     params.require(:student).permit(:first_name, :last_name)
#   end
# end
