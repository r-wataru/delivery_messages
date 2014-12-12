class AccountMailer < ActionMailer::Base
  default charset: 'ISO-2022-JP', from: "test@example.com"
  
  def broadcast(delivery)
  end
end