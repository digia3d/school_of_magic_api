class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: { users: }, status: :ok
  end

  def create
    user = User.new(name: params[:name])

    if user.save
      render json: { message: "Welcome, #{user.name}!" }, status: :created
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
    if user.present?
      session[:user_id] = user.id
      render json: { message: "Logged in successfully as #{user.name}" }, status: :ok
    else
      render json: { error: 'Invalid name' }, status: :unauthorized
    end
  end
end
