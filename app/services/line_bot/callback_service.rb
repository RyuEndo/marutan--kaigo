require 'line/bot'

module LineBot
  class CallbackService
    include Client
    include Exceptions::LineBot

    private_class_method :new

    def self.call(request)
      new(request).send(:call)
    end

    private

    attr_accessor :request

    def initialize(request)
      @request = request
    end

    def call
      validate_signature

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
    end

    def validate_signature
      body = request.body.read
      signature = request.env['HTTP_X_LINE_SIGNATURE']

      unless client.validate_signature(body, signature)
        raise InvalidSignature
      end
    end
  end
end
