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
        text: '友達登録ありがとう!'
      }
    end

    def ask_plastic_surgery_experience
      {
        type: 'text',
        text: '整形の経験はありますか?',
        quickReply: {
          items: [
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'あり',
                text: 'あり'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'なし',
                text: 'なし'
              }
            }
          ]
        }
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
                text: '鼻'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'まぶた',
                text: 'まぶた'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: '口',
                text: '口'
              }
            }
          ]
        }
      }
    end

    def ask_highest_priority_of_hospital
      {
        type: 'text',
        text: '病院を選ぶにあたって最も重要視する点は何ですか',
        quickReply: {
          items: [
            {
              type: 'action',
              action: {
                type: 'message',
                label: '値段',
                text: '値段'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: '症例',
                text: '症例'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: '評判',
                text: '評判'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'カウンセラーの質',
                text: 'カウンセラーの質'
              }
            }
          ]
        }
      }
    end

    def not_implemented
      {
        type: 'text',
        text: '実装してなす'
      }
    end
  end
end
