class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name avatar])
  end

  def authenticate_user
    token = request.headers['Authorization']&.split&.last

    unless token
      render json: { error: 'Unauthorized' }, status: :unauthorized
      return
    end

    begin
      decoded_token = JWT.decode(token, '6bb17a68611286a3b2e736cf08b841e93b0b29bda146be40dc8fafde12ff219b3a60e9f0079981f180edccf86cf1a45b4814e9bb2312bab0fb27fd81648f73c8', true, algorithm: 'HS256')

    rescue JWT::DecodeError
      render json: { error: 'Invalid token' }, status: :unauthorized
    end
  end
end
