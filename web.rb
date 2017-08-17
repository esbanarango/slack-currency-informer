require 'sinatra/base'

module CurrencyInformer
  class Web < Sinatra::Base
    get '/' do
      'Doloroso is running!'
    end
  end
end