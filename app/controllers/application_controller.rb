class ApplicationController < ActionController::Base
  rescue_from Exceptions::LineBot::InvalidSignature, with: :handle_403

  private

  def handle_403(e)
    logger.error(e)
    head :forbidden
  end
end
