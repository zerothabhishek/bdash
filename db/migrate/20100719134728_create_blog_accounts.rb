class CreateBlogAccounts < ActiveRecord::Migration
  def self.up
    create_table :blog_accounts do |t|
      t.string :blog_account_username
      t.string :blog_account_password
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :blog_accounts
  end
end
