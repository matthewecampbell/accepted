class CollegeService

  def initialize
    @_conn = Faraday.new("http://acceptedapi.herokuapp.com/api/v1/colleges.json")
  end

  def get_colleges
    JSON.parse(conn.get.body, symbolize_names: true)
  end

  private

  def conn
    @_conn
  end
end
