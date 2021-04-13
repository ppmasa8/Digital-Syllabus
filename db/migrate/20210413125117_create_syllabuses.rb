class CreateSyllabuses < ActiveRecord::Migration[6.1]
  def change
    create_table :syllabuses do |t|
      t.string :subject
      t.string :unit_and_course_int
      t.string :subject_type
      t.string :teacher
      t.string :schooling
      t.string :textbook
      t.text :summary

      t.timestamps
    end
  end
end
