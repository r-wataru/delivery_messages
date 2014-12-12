# == Schema Information
#
# Table name: document_deliveries
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  document_id :integer          not null
#  status      :string(255)      default(""), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class DocumentDelivery < ActiveRecord::Base
  belongs_to :user
  belongs_to :documents
end
