class AboutsController < ApplicationController
  def create
    about = About.find_or_initialize_by(
      user_id: current_user.id,
      name: params[:name],
      accomplishments: params[:accomplishments],
      superpower: params[:superpower],
    )
    if about.save
      render json: about.as_json
    else
      render json: { errors: about.errors.full_messages }, status: 422
    end
  end

  def update
    about = About.find_by(id: params[:id])
    about.name = params[:name] || about.name
    about.accomplishments = params[:accomplishments] || about.accomplishments
    about.superpower = params[:superpower] || about.superpower

    if about.save
      render json: about
    else
      render json: { errors: about.errors.full_messages }, status: 422
    end
  end
end
