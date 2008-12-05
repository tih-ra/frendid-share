class CreateEmbeds < ActiveRecord::Migration
  def self.up
    create_table :embeds do |t|
      t.string :title
      t.string :place
      t.string :url
      t.string :email
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :embeds
  end
end
