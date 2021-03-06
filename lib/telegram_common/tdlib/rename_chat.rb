module TelegramCommon::Tdlib
  class RenameChat < Command
    def call(chat_id, new_title)
      @client.on_ready do |client|
        client.broadcast_and_receive('@type' => 'setChatTitle',
                                     'chat_id' => chat_id,
                                     'title' => new_title)
      end
    end
  end
end
