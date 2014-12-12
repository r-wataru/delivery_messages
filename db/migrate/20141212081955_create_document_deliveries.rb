class CreateDocumentDeliveries < ActiveRecord::Migration
  def change
    create_table :document_deliveries do |t|
      t.references :user, null: false
      t.references :document, null: false
      t.string :status, null: false, default: ""

      t.timestamps null: false
    end
  end
end
