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

    def ask_area
      {
        type: 'text',
        text: 'まずは介護施設を探す地域を教えてください！',
        quickReply: {
          items: [
            {
              type: 'action',
              action: {
                type: 'message',
                label: '北海道',
                text: '北海道'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: '東北',
                text: '東北'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '関東',
                text: '関東'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '中部',
                text: '中部'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '近畿',
                text: '近畿'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '中国',
                text: '中国'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '四国',
                text: '四国'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '九州',
                text: '九州'
              }
            }
          ]
        }
      }
    end
	  
	def ask_second_area
      {
        type: 'text',
        text: '次に都道府県を教えてください！',
        quickReply: {
          items: [
            {
              type: 'action',
              action: {
                type: 'message',
                label: '茨城県',
                text: '茨城県'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: '栃木県',
                text: '栃木県'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '群馬県',
                text: '群馬県'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '埼玉県',
                text: '埼玉県'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '千葉県',
                text: '千葉県'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '東京都',
                text: '東京都'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '神奈川県',
                text: '神奈川県'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '地域の選択に戻る',
                text: '地域の選択に戻る'
              }
            }
          ]
        }
      }
    end

    def ask_cost
      {
        type: 'text',
        text: '想定している費用を教えてください。まずは入居一時金についてです。',
        quickReply: {
          items: [
            {
              type: 'action',
              action: {
                type: 'message',
                label: '一時金なし',
                text: '一時金なし'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: '50万円以下',
                text: '50万円以下'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '100万円以下',
                text: '100万円以下'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '200万円以下',
                text: '200万円以下'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '300万円以下',
                text: '300万円以下'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '都道府県の選択に戻る',
                text: '都道府県の選択に戻る'
              }
            }
          ]
        }
      }
    end

    def ask_period
      {
        type: 'text',
        text: '入居希望時期は決まっていますか？',
        quickReply: {
          items: [
            {
              type: 'action',
              action: {
                type: 'message',
                label: '1週間以内',
                text: '1週間以内'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: '1か月以内',
                text: '1か月以内'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '3か月以内',
                text: '3か月以内'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '6カ月以内',
                text: '6カ月以内'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '1年以内',
                text: '1年以内'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: 'それ以降',
                text: 'それ以降'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '未定',
                text: '未定'
              }
			},
			{
              type: 'action',
              action: {
                type: 'message',
                label: '費用の選択に戻る',
                text: '費用の選択に戻る'
              }
            }
          ]
        }
      }
    end
	  
	def ask_condition
      {
        type: 'text',
        text: 'お探しの施設の入居希望条件を教えてください！',
        quickReply: {
          items: [
            {
              type: 'action',
              action: {
                type: 'message',
                label: '自立',
                text: '自立'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: '要支援',
                text: '要支援'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '要介護',
                text: '要介護'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '認知症相談可',
                text: '認知症相談可'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '不明',
                text: '不明'
              }
            },
			{
              type: 'action',
              action: {
                type: 'message',
                label: '入居希望時期の選択に戻る',
                text: '入居希望時期の選択に戻る'
              }
            }
          ]
        }
      }
    end
	  
	def ask_condition
      {
        type: 'text',
        text: '医療・感染症などの特別な条件はありますか？',
        quickReply: {
          items: [
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'ある',
                text: 'ある'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'ない',
                text: 'ない'
              }
            }
          ]
        }
      }
    end
	  
	def propose_home
	　{
		type:"uri",
		label:"介護施設の詳細を見る",
		uri:"https://vigilant-galileo-e391c6.netlify.com/",
        altUri: 
		   {
            desktop: "https://vigilant-galileo-e391c6.netlify.com/"
         }
　　　　}
      {
        type: 'text',
        text: 'あなたのお探しの条件にぴったりの介護施設を探してきました！一括で資料請求しますか？(もう少し詰める必要がある)',
        quickReply: {
          items: [
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'する',
                text: 'する'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: 'しない',
                text: 'しない'
              }
            }
          ]
        }
      }
    end
	  
    def ask_after
      {
        type: 'text',
        text: '他に何かできることはありますか？',
        quickReply: {
          items: [
            {
              type: 'action',
              action: {
                type: 'message',
                label: '他の施設を探す',
                text: '他の施設を探す'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: '見学の仕方について相談する',
                text: '見学の仕方について相談する'
              }
            },
            {
              type: 'action',
              action: {
                type: 'message',
                label: '見学の仕方について相談する',
                text: '見学の仕方について相談する'
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
  end
end
