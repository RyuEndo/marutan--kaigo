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
        text: '友達登録ありがとうございます！ここにサービスの説明を入れます。'
      }
    end

    def ask_firstquestion
      {
        type: 'text',
        text: '一つ目の質問です',
        quickReply: {
          items: [
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'あ',
                text: 'あ'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'い',
                text: 'い'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: 'う',
                text: 'う'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: 'え',
                text: 'え'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: 'お',
                text: 'お'
              }
            }
          ]
        }
      }
    end

    def ask_secoundquestion
      {
        type: 'text',
        text: '二つ目の質問です',
        quickReply: {
          items: [
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'か',
                text: 'か'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'き',
                text: 'き'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: 'く',
                text: 'く'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: 'け',
                text: 'け'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: 'こ',
                text: 'こ'
              }
            }
          ]
        }
      }
    end

    def ask_thirdquestion
      {
        type: 'text',
        text: '三つ目の質問です',
        quickReply: {
          items: [
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'さ',
                text: 'さ'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'し',
                text: 'し'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: 'す',
                text: 'す'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: 'せ',
                text: 'せ'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: 'そ',
                text: 'そ'
              }
            }
          ]
        }
      }
    end

    def not_implemented
      {
        type: 'text',
        text: 'まだ対応できません'
      }
    end
	def location
      {  
        type:"location",
        label:"Location"
      }
    end
  end
end
