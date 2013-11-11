class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :text
      t.string :timestamp
      t.string :uniq_name
      t.string :disp_name

      t.timestamps
    end
  end
end
