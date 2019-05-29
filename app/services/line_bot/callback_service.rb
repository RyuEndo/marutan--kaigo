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
          client.reply_message(event['replyToken'], [appreciate_following, ask_firstquestion])
        when Line::Bot::Event::Message
          case event.type
          when Line::Bot::Event::MessageType::Text
            case event.message['text']
            when 'あ', 'い', 'う', 'え', 'お'
              client.reply_message(event['replyToken'], [appreciate, ask_secoundquestion])
            when 'か', 'き', 'く', 'け', 'こ'
              client.reply_message(event['replyToken'], [appreciate, ask_thirdquestion])
            when 'さ', 'し', 'す', 'せ', 'そ'
              client.reply_message(event['replyToken'], [appreciate, ask_firstquestion])
			when '位置情報'
              client.reply_message(event['replyToken'], [appreciate, location])
            else
              client.reply_message(event['replyToken'], [not_implemented,ask_firstquestion])
            end
          end
        end
      }
    end
  end
end
