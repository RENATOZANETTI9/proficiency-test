class CoursesController < ApplicationController
   private def course_params
      params.require(:course).permit(:name, :description)
   end

   def new
      @course = Course.new
   end

   def create
     @course = Course.new(course_params)
 
     if @course.save
       redirect_to @course, notice: "Curso foi criado."
     else
       flash[:alert] = "Curso não pode ser criado."
       render "new"
     end
   end

   def show
     @course = Course.find(params[:id])
   end
end
