class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :email_address
      t.string :subject
      t.text :html
      t.text :text

      t.timestamps
    end
  end
end
