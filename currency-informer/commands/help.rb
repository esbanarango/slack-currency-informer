module CurrencyInformer
  module Commands
    class Help < SlackRubyBot::Commands::Help
      command 'help' do |client, data, _match|
        send_message client, data.channel, "Try typing: convert `<amount>` `<currency_from>` to `<currency_to>`"
      end
    end
  end
end
