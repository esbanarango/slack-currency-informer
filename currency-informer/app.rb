require 'money'
require 'money/bank/google_currency'

module CurrencyInformer
  class App < SlackRubyBot::App
    # (optional)
    # set the seconds after than the current rates are automatically expired
    # by default, they never expire
    Money::Bank::GoogleCurrency.ttl_in_seconds = 86400
    
    # set default bank to instance of GoogleCurrency
    Money.default_bank = Money::Bank::GoogleCurrency.new
  end
end
