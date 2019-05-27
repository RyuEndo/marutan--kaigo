class LineBotController < ApplicationController
  require 'line/bot'

  protect_from_forgery :except => [:callback]

  def client
    @client ||= Line::Bot::Client.new { |config|
      config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
      config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
    }
  end

  def callback
    body = request.body.read

    signature = request.env['HTTP_X_LINE_SIGNATURE']
    unless client.validate_signature(body, signature)
      head :bad_request
    end

    events = client.parse_events_from(body)

    events.each { |event|
      case event
      when Line::Bot::Event::Message
        case event.type
        when Line::Bot::Event::MessageType::Text
          message = {
            type: "text",
            text: "Select your favorite food category or send me your location!",
            quickReply: {
              items: [
                {
                  type: "action",
                  imageUrl: "https://example.com/sushi.png",
                  action: {
                    type: "message",
                    label: "Sushi",
                    text: "Sushi"
                  }
                },
                {
                  type: "action",
                  imageUrl: "https://example.com/tempura.png",
                  action: {
                    type: "message",
                    label: "Tempura",
                    text: "Tempura"
                  }
                },
                {
                  type: "action",
                  action: {
                    type: "location",
                    label: "Send location"
                  }
                }
              ]
            }
          }
          client.reply_message(event['replyToken'], message)
        end
      end
    }

    head :ok
  end
end
