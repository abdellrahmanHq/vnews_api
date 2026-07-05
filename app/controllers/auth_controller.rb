class AuthController < ApplicationController
  def login
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      token = encode_token(user_id: user.id)
      render json: {
        user: { id: user.id, first_name: user.first_name, last_name: user.last_name, email: user.email },
        token: token
      }, status: :ok
    else
      render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end
end