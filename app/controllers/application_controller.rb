class ApplicationController < ActionController::Base
  require 'line/bot'

  private

  def line_client
    @line_client ||= Line::Bot::Client.new { |config|
      config.channel_token  = ENV['LINE_CHANNEL_TOKEN']
      config.channel_secret = ENV['LINE_CHANNEL_SECRET']
    }
  end
end
