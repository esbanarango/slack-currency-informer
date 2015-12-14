require 'sinatra/base'

module CurrencyInformer
  class Web < Sinatra::Base
    get '/' do
      'Nacional campeón 2015!!!'
    end
  end
end