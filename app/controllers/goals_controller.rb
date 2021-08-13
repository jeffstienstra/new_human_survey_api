class GoalsController < ApplicationController
  def create
    user = User.find_by(id: current_user.id)
    user.survey_complete = true

    goal = Goal.find_or_initialize_by(
      user_id: current_user.id,
      short_term_goal: params[:short_term_goal],
      long_term_goal: params[:long_term_goal],
    )
    if goal.save
      render json: goal.as_json
    else
      render json: { errors: goal.errors.full_messages }, status: 422
    end
  end

  def update
    goal = Goal.find_by(id: params[:id])
    goal.short_term_goal = params[:short_term_goal] || goal.short_term_goal
    goal.long_term_goal = params[:long_term_goal] || goal.long_term_goal

    if goal.save
      render json: goal
    else
      render json: { errors: goal.errors.full_messages }, status: 422
    end
  end
end
