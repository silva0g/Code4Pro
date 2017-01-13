class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps null: false #Added null: and false
    end
    add_foreign_key :subscriptions, :projects
    add_foreign_key :subscriptions, :users

    add_index :subscriptions, [:project_id, :user_id], :unique => true
  end
end
