# == Schema Information
#
# Table name: documents
#
#  id         :integer          not null, primary key
#  subject    :string(255)      not null
#  body       :text(65535)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Document < ActiveRecord::Base
  def self.all_user_deliveries
    begin
      # 送信コマンド
    rescue => e
      if e.message.include?("User unknown in virtual mailbox table")
        raise
      elsif e.message.include?("Name or service not known")
        raise
      else
        raise 
      end
    end
  end
end
