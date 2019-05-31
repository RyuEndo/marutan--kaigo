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
          client.reply_message(event['replyToken'], [appreciate_following, ask_area])
        when Line::Bot::Event::Message
          case event.type
          when Line::Bot::Event::MessageType::Text
            case event.message['text']
				
		　　when '地域の選択に戻る','他の施設を探す'
			  client.reply_message(event['replyToken'], [appreciate, ask_area])
            when '北海道', '東北', '関東', '中部', '近畿', '中国', '近畿', '九州','都道府県の選択に戻る'
              client.reply_message(event['replyToken'], [appreciate, ask_second_area])
            when '茨城県', '栃木県', '群馬県', '埼玉県', '千葉県', '東京都', '神奈川県','費用の選択に戻る'
              client.reply_message(event['replyToken'], [appreciate, ask_cost])
            when '一時金なし', '50万円以下', '100万円以下', '200万円以下', '300万円以下','入居希望時期の選択に戻る'
              client.reply_message(event['replyToken'], [appreciate, ask_period])
			when '1週間以内','1か月以内','3か月以内','6か月以内','1年以内','それ以降','未定'
              client.reply_message(event['replyToken'], [appreciate, ask_condition])
		    when '自立','要支援','要介護','認知症相談可','不明'
              client.reply_message(event['replyToken'], [appreciate, ask_favorite])
			when 'ある','ない'
              client.reply_message(event['replyToken'], [appreciate, propose_home])
			when 'する','しない'
              client.reply_message(event['replyToken'], [appreciate, ask_after])
            else
              client.reply_message(event['replyToken'], [not_implemented,ask_after])
            end
          end
        end
      }
    end
  end
end
