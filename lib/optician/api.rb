require "rest-client"

module Optician
  class Api
    def initialize(project_id, branch, batch, browser, driver)
      @project_id = project_id
      @branch = branch
      @batch = batch
      @browser = browser
      @driver = driver
    end
    def screenshot(target)
      RestClient.post 'localhost:8080/cases', {
        projectid: @project_id,
        branch: @branch,
        batch: @batch,
        target: target,
        image: @driver.screenshot_as(:base64)
      }.to_json, {content_type: :json, accept: :json}
    end
  end
end
