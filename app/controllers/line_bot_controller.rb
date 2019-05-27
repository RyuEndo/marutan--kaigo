class LineBotController < ApplicationController
  include LineBot::Client
  protect_from_forgery except: :callback

  def callback
    body = request.body.read
    signature = request.env['HTTP_X_LINE_SIGNATURE']
    head :forbidden unless client.validate_signature(body, signature)

    LineBot::CallbackService.call(request)
    head :ok
  end
end
