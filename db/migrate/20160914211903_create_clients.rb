class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.text :firstname
      t.text :lastname
      
      t.text :gender
      
      t.date :dob
      
      t.text :nickname
      
      t.text :userandrpushregid
      t.text :useriospushtoken
      
      t.text :imageurl     
      
      t.timestamps
    end
  end
end
