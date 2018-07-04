module Docomoru
  module DialogueMethods
    PATH = '/naturalChatting/v1/dialogue'

    def create_dialogue(message, params = {}, headers = {})
      post(
        "#{PATH}?#{default_query_string}",
        params.merge(voiceText: message, language: 'ja-JP', botId: "Chatting", appId: ENV["DOCOMO_DIALOGUE_APP_ID"]),
        headers,
      )
    end
  end
end
