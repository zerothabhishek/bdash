class CreateBdashPushes < ActiveRecord::Migration
  def self.up
    create_table :bdash_pushes do |t|
      t.string :push_comment
      t.references :user
      t.references :post
      t.references :blog

      t.timestamps
    end
  end

  def self.down
    drop_table :bdash_pushes
  end
end
