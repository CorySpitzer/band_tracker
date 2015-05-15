class CreateInitialTables < ActiveRecord::Migration
  def change
    create_table(:bands) do |t|
      t.column(:name, :string)
      t.column(:genre, :string)

      t.timestamps
    end

    create_table(:venues) do |t|
      t.column(:name, :string)
      t.column(:location, :string)

      t.timestamps
    end

    #the bands_venues join table
    create_table(:shows) do |t|
      t.column(:band_id, :integer)
      t.column(:venue_id, :integer)
      t.column(:show_date, :date)
      # TODO: A boolean played column could be added

      t.timestamps
    end
  end
end
