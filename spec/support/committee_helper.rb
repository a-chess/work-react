module CommitteeHelper
  def committee_schema
    @committee_schema ||=
      begin
        driver = Committee::Drivers::OpenAPI2.new
        schema = JSON.parse(File.read(schema_path))
        driver.parse(schema)
      end
  end

  def schema_path
    Rails.root.join('docs', 'api', 'schema.json')
  end

  def test_func
    return 100
  end
end