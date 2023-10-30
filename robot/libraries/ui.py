from robot.libraries.BuiltIn import BuiltIn

def get_driver():
    selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')
    driver = selenium_lib.driver
    return driver

def do_something(locator):
    driver = get_driver()
    element = driver.find_element_by_xpath(locator)
    element.click()
