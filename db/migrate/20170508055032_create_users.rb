class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :gender
      t.date :date_of_birth
      t.integer :language
      t.text :address_line_1
      t.text :address_line_2
      t.string :zipcode
      t.string :city
      t.string :country
      t.string :phone_number
      t.string :vat_id_number
      t.string :profile_picture
      t.string :cover_picture
      t.boolean :email_verified
      t.boolean :phone_verified
      t.boolean :vat_id_number_verified
      t.boolean :send_newsletter
      t.integer :rating
      t.integer :business_type

      t.timestamps
    end
  end
end
