class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    create_table :tweets do |t|
      t.string :username
      t.text :description

      t.timestamps
    end
  end
end
