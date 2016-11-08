class CreateResponders < ActiveRecord::Migration[5.0]
  def change
    create_table   :responders do |t|
      t.integer    :age
      t.string     :position
      t.string     :gender
      t.references :session, foreign_key: true

      t.timestamps
    end
  end
end
