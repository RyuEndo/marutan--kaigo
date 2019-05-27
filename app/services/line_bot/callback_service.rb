require 'line/bot'

module LineBot
  class CallbackService
    include Client
    include Message
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
      body = request.body.read
      events = client.parse_events_from(body)
      events.each { |event|
        case event
        when Line::Bot::Event::Follow
          client.reply_message(event['replyToken'], [appreciate_following, ask_plastic_surgery_experience])
        when Line::Bot::Event::Message
          case event.type
          when Line::Bot::Event::MessageType::Text
            case event.message['text']
            when 'あり'
              client.reply_message(event['replyToken'], [appreciate, ask_unpleasant_parts])
            when 'なし'
              client.reply_message(event['replyToken'], [appreciate, ask_unpleasant_parts])
            when '鼻', 'まぶた', '口'
              client.reply_message(event['replyToken'], [appreciate, ask_highest_priority_of_hospital])
            else
              client.reply_message(event['replyToken'], not_implemented)
            end
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
