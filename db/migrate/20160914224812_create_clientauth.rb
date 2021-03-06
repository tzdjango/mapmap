class CreateClientauth < ActiveRecord::Migration
  def change
    create_table :clientauths do |t|
      t.integer :client_id
      t.text    :username
      t.text    :secret
      t.text    :language
      t.text    :registrationkey
      t.timestamp    :registrationinitiated
      t.timestamp    :registrationvalieduntil
      t.timestamp    :registrationcompleted
      t.text        :status
      t.boolean     :isvalid
      t.text        :apikey
      t.timestamps
    end
  end
end
