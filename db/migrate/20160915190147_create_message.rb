class CreateMessage < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text    :messagetext
      t.text    :imageurl
      t.integer :kilometer
      t.date    :suggesteddate
      t.timestamps
    end
  end
end
