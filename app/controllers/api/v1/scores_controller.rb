module Api
  module V1
    class ScoresController < ApplicationController
      def index
        mark = Score.all
        render json: {status: "success",data:mark},status: :ok
      end

      def create
        mark = Score.new(scores_params)
        if mark.save
          render json: {status: "success", data:mark},status: :ok
        else 
          render json: {status: "failed", data:mark.errors},status: :unprocessable_entity
        end
      end

      private
      def scores_params
        params.permit(:tamil, :eng, :maths, :student_id)
      end
    end
  end
end