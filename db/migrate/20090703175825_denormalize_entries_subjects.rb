class DenormalizeEntriesSubjects < ActiveRecord::Migration
  def self.up
    
    # Gets the database adapter info defined in the database.yml file
    adapter = User.connection.instance_variable_get("@config")[:adapter]
    
    add_column :entries_subjects, :language_id, :integer
    add_column :entries_subjects, :grain_size, :string
    add_index "entries_subjects", ["language_id"]
    add_index "entries_subjects", ["grain_size"]
    
    if adapter == 'mysql'
      execute "ALTER TABLE entries_subjects DROP PRIMARY KEY, ADD PRIMARY KEY USING BTREE(subject_id, language_id, grain_size, entry_id);"
      execute "UPDATE entries_subjects AS es INNER JOIN entries AS e ON e.id = es.entry_id SET es.language_id = e.language_id, es.grain_size = e.grain_size"
    elsif adapter == 'postgresql'
      execute "DROP INDEX entries_subjects_subject_id_entry_id"
      execute "CREATE UNIQUE INDEX entries_subjects_subject_id_entry_id ON entries_subjects USING btree(subject_id, language_id, grain_size, entry_id); "
      execute "ALTER TABLE entries_subjects CLUSTER ON entries_subjects_subject_id_entry_id; "
      execute "UPDATE entries_subjects es SET language_id = e.language_id, grain_size = e.grain_size FROM entries e WHERE es.entry_id = e.id"
    else
      raise 'Migration not implemented for this DB adapter'
    end
    
  end

  def self.down
    
    # Gets the database adapter info defined in the database.yml file
    adapter = User.connection.instance_variable_get("@config")[:adapter]
    
    if adapter == 'mysql'
      execute "ALTER TABLE entries_subjects DROP PRIMARY KEY, ADD PRIMARY KEY USING BTREE(subject_id, entry_id);"
    elsif adapter == 'postgresql'
      execute "DROP INDEX entries_subjects_subject_id_entry_id" 
      execute "CREATE UNIQUE INDEX entries_subjects_subject_id_entry_id ON entries_subjects USING btree(subject_id, entry_id); "
      execute "ALTER TABLE entries_subjects CLUSTER ON entries_subjects_subject_id_entry_id; "
    end
    
    remove_column :entries_subjects, :language_id 
    remove_column :entries_subjects, :grain_size 
  end
end
