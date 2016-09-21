class CollegeService

  def initialize
    @_conn = Faraday.new("http://acceptedapi.herokuapp.com/api/v1")
  end

  def get_colleges
    response = conn.get("colleges")
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_recommended_colleges(act, in_state, out_of_state, affiliation, grad_rate, enrollment)
    response = conn.get("recommended_colleges?act=#{act}&in_state=#{in_state}&out_of_state=#{out_of_state}&affiliation=#{affiliation}&grad_rate=#{grad_rate}&enrollment=#{enrollment}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_college(id)
    response = conn.get("colleges/#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    @_conn
  end
end
