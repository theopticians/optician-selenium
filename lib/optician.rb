require_relative 'optician/version'
require_relative 'optician/api'

module Optician
  def self.initialize(project_id, branch, batch, browser, driver)
    Api.new(project_id, branch, batch, browser, driver)
  end
end
