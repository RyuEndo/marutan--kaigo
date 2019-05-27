module LineBot
  module Message
    def appreciate
      {
        type: 'text',
        text: 'ありがとうございます'
      }
    end

    def appreciate_following
      {
        type: 'text',
        text: '友達登録ありがとうございます'
      }
    end

    def ask_unpleasant_parts
      {
        type: 'text',
        text: '特に気になる部位はどちらですか',
        quickReply: {
          items: [
            {
              type: 'action',
              action: {
                type: 'message',
                label: '鼻',
                text: '鼻です'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'まぶた',
                text: 'まぶたです'
              }
            }
          ]
        }
      }
    end

    def ask_plastic_surgery_experience
      {
        type: 'text',
        text: '整形の経験はありますか',
        quickReply: {
          items: [
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'あり',
                text: 'あります'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'なし',
                text: 'ないです'
              }
            }
          ]
        }
      }
    end
  end
end
