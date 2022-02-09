module Api
    module V1
        class RegistersController < ApplicationController
            def index
                student = Student.order('created_at DESC');
                render json: {status: 'SUCCESS', message: 'Loaded students', data:student},status: :ok
            end

            def show
                student = Student.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Loaded student', data:student},status: :ok
            end
    
            def create
                student = Student.new(student_params)
                if student.save
                    render json: {status: "success", message: 'created student', data:student},status: :ok
                else
                    render json: {status: "failed", message: 'stduent not created', data:student.errors},status: :unprocessable_entity
                end
            end

            private
            def student_params
                params.permit(:name, :student_class, :roll_no)
            end
        end
    end
end
