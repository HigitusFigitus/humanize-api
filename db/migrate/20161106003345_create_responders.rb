class CreateResponders < ActiveRecord::Migration[5.0]
  def change
    create_table   :responders do |t|
      t.integer    :age
      t.string     :culture
      t.string     :gender
      t.boolean    :presurvey
      t.references :session, foreign_key: true

      t.timestamps
    end
  end
end
