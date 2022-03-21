from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC

driver = webdriver.Chrome(ChromeDriverManager().install())
driver.get("https://play.google.com/store/apps/details?id=com.playdemic.golf.android")


dr_button = driver.find_element_by_xpath("//button[@aria-label='Instalar']")
dr_button.click()