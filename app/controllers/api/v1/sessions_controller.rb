class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_or_create_by(name: params[:name])
    if user.persisted?
      session[:user_id] = user.id # Set the session variable
      render json: { message: "Welcome, #{user.name}!" }, status: :ok
    else
      render json: { error: user.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end

  def show
    if session[:user_id]
      user = User.find(session[:user_id])
      render json: { user_id: user.id, user_name: user.name }, status: :ok
    else
      render json: { error: 'You are not logged in' }, status: :unauthorized
    end
  end

  def login
    user = User.find_by(name: params[:name])
    if user
      session[:user_id] = user.id # Set the session variable
      render json: { message: "Logged in successfully as #{user.name}" }, status: :ok
    else
      render json: { error: 'Invalid name' }, status: :unauthorized
    end
  end
end
