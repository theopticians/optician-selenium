require 'selenium-webdriver'
require 'optician'

driver = Selenium::WebDriver.for :chrome

opt = Optician.initialize('project', 'branch', 'batch', 'chrome', driver)

puts opt

driver.navigate.to 'http://www.typeform.com'
opt.screenshot('hola2')

driver.close
