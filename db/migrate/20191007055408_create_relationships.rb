class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.references :follower, foreign_key: true
      t.references :followee, foreign_key: true
    end
  end
end
