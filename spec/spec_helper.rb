$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))

require 'currency-informer'
require 'slack-ruby-bot/rspec/support/slack-ruby-bot/respond_with_slack_message'

RSpec.configure do |config|
  config.before :each do
    SlackRubyBot.configure do |c|
      c.token = 'testtoken'
      c.user = 'doloroso'
      c.user_id = 'DEADBEEF'
    end

    ENV['SLACK_API_TOKEN'] ||= 'test'
  end

  # config.after :each do
  #   SlackRubyBot::Config.reset!
  # end
end
