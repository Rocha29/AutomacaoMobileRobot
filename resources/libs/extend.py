from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import keyword
from appium.webdriver.common.touch_action import TouchAction
@keyword(name='Drang And Drop')
def drag_drop (elemente_id, posicao_origin, posicao_final):
    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application()

    ele_origin = driver.find_elements_by_id(elemente_id)[int (posicao_origin)]
    ele_destino = driver.find_elements_by_id(elemente_id)[int (posicao_final)]

    actions = TouchAction(driver)
    actions.long_press(ele_origin).move_to(ele_destino)
    actions.release()
    actions.perform()


