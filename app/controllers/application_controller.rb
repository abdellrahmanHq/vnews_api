class ApplicationController < ActionController::API
  SECRET_KEY = Rails.application.secret_key_base

  def encode_token(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, SECRET_KEY)
  end

  def authorized_user
    auth_header = request.headers['Authorization']
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        decoded_token = JWT.decode(token, SECRET_KEY, true, algorithm: 'HS256')
        user_id = decoded_token[0]['user_id']
        @current_user = User.find_by(id: user_id)
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def authenticate_user!
    render json: { error: 'Please log in to perform this action' }, status: :unauthorized_content unless authorized_user
  end
end