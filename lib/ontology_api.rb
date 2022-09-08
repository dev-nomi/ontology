require 'httparty'

class OntologyApi

  def request ontology_id: nil
    return STDOUT.puts "Oops! Missing ontology id." if ontology_id.nil?

    headers = { 'Content-Type': 'application/json' }
    url = "http://www.ebi.ac.uk/ols/api/ontologies/#{ontology_id}"
    response = HTTParty.get(url, headers: headers)

    handle_response(response)
  end

  def parsed_response response
    STDOUT.puts "Title: #{response['config']['title']}"
    STDOUT.puts "Description: #{response['config']['description']}"
    STDOUT.puts "Number of terms: #{response['numberOfTerms']}"
    STDOUT.puts "Status: #{response['status']}"
  end

  def handle_response response
    case response.code
      when 200
        parsed_response(response)
      when 404
        STDOUT.puts "Oops! Invalid ontology id."
      when 500...600
        STDOUT.puts "Oops! ERROR #{response.code}"
    end
  end
end