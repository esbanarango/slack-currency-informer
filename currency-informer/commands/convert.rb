module CurrencyInformer
  module Commands
    class Convert < SlackRubyBot::Commands::Base
      command 'convert' do |client, data, _match|
        send_message client, data.channel, '3370'
      end
    end
  end
end