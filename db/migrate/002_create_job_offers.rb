migration 2, :create_job_offers do
  up do
    create_table :job_offers do
      column :id, Integer, :serial => true
      column :title, DataMapper::Property::String, :length => 255
      column :location, DataMapper::Property::String, :length => 255
      column :description, DataMapper::Property::String, :length => 255
      column :salary_expectation, DataMapper::Property::Boolean
    end
  end

  down do
    drop_table :job_offers
  end
end
