class UsersController < ApplicationController

  def count
    render json:{count: User.count}
  end

  # POST /signup
  def create
    user = User.new(user_params)
    if user.save
      token = encode_token(user_id: user.id)
      render json: {
        user: { id: user.id, first_name: user.first_name, last_name: user.last_name, email: user.email },
        token: token
      }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone, :password)
  end
end