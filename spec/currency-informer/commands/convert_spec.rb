require 'spec_helper'

describe CurrencyInformer::Commands::Convert do

  def app
    CurrencyInformer::App.instance
  end

  subject { app }

  it 'returns the currency converted' do
    money = 1.to_money(:USD)
    convertion = money.exchange_to(:COP).amount.to_f

    expect(message: "#{SlackRubyBot.config.user} convert 1 usd to cop", channel: 'channel').to respond_with_slack_message("That would be: #{convertion} COP")
  end
end
