require 'monetize'

module CurrencyInformer
  module Commands
    class Convert < SlackRubyBot::Commands::Base
      command 'convert' do |client, data, _match|
        # _match[3] is where the match holds everything after the command string
        regex_match = _match[3].match(/^(?<amount>\w*) (?<cur_from>\w*) to (?<cur_to>\w*)$/)
        
        # getting the input
        amount = regex_match[:amount]
        cur_from = regex_match[:cur_from].upcase.to_sym
        cur_to = regex_match[:cur_to].upcase.to_sym

        # converting the currency
        money = amount.to_money(cur_from)

        # sending the message back to the channel
        send_message client, data.channel, "That would be: #{money.exchange_to(cur_to).amount.to_f} #{cur_to.to_s}"
      end
    end
  end
end
