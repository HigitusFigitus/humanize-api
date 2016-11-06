class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table   :sessions do |t|
      t.date       :date
      t.string     :topic
      t.string     :content
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
