class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :profile_image
      t.string :status
      t.string :about_me
      t.string :occupation
      t.string :hobbies
      t.integer :user_id
      t.string :location
      t.timestamps
    end
  end
end
