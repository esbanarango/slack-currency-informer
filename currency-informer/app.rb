require 'money'
require 'money/bank/google_currency'

module CurrencyInformer
  class App < SlackRubyBot::App
    EXCHANGE_RATE_TTL = 300
    # set the seconds after which the current rates are automatically expired
    Money::Bank::GoogleCurrency.ttl_in_seconds = EXCHANGE_RATE_TTL
    
    # set default bank to instance of GoogleCurrency
    Money.default_bank = Money::Bank::GoogleCurrency.new
  end
end
