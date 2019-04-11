class CreateApiVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :api_votes do |t|

      t.timestamps
    end
  end
end
