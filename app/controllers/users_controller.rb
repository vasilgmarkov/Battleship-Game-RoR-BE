class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  def show
    render json: @user.as_json(:except => [:password_digest])
  end
    # POST /todos
  def create
    @user = Todo.create!(user_params)
    json_response(@user, :created)
  end

  private

  def user_params
    params.permit(
      :name,
      :email,
      :password_digest
    )
  end

  def set_user
    @user = User.find(params[:id])
  end



end
