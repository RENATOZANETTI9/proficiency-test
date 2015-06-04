class ClassroomsController < ApplicationController
   def classroom_params
      params.require(:classroom).permit(:student_id, :course_id, :entry_at)
   end

   def new
      @classroom = Classroom.new
      @student = Student.all 
      @course = Course.all 
   end

   def create
     @classroom = Classroom.new(classroom_params)
 
     if @classroom.save
       redirect_to @classroom, notice: "Matrícula foi criada."
     else
       flash[:alert] = "Matrícula não pode ser criada."
       render "new"
     end
   end

   def show
     @classroom = Classroom.find(params[:id])
   end
end
