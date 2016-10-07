class CreateFeedback < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :repairshop_id
      t.text :service
      t.text :feedbacktext
      t.timestamps
    end
  end
end
