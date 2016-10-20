$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'currency-informer'
require 'web'

Thread.abort_on_exception = true

Thread.new do
  begin
    CurrencyInformer::App.instance.run
  rescue Exception => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run CurrencyInformer::Web