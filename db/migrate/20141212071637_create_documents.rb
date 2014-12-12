class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :subject, null: false
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
