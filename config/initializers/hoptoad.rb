if Secrets.hoptoad_key
  HoptoadNotifier.configure do |config|
    config.api_key = Secrets.hoptoad_key
  end
end