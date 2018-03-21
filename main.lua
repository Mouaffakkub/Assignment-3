-----------------------------------------------------------------------------------------
-- Created by: Mouaffak Koubeisy
-- Created on: March 21st 2018
-- This code determines the cost of a pizza based on the # of topics and the size
-----------------------------------------------------------------------------------------
local sizeOfPizzaTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 200, 450, 75 )
sizeOfPizzaTextField.id = "length textField"

local sizeOfPizzaInstructionsTextField = display.newText( " Large or XL? ", display.contentCenterX, display.contentCenterY - 300, native.systemFont, 75 )
sizeOfPizzaInstructionsTextField.id = "area textField"
sizeOfPizzaInstructionsTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.jpg", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY + 100
calculateButton.id = "calculate button"

local numberOfToppingsTextField = native.newTextField( display.contentCenterX, display.contentCenterY, 450, 75 )
numberOfToppingsTextField.id = "length textField"

local numberOfToppingsInstructionsTextField = display.newText( " Choose 1-4 Toppings ", display.contentCenterX, display.contentCenterY - 100, native.systemFont, 75 )
numberOfToppingsInstructionsTextField.id = "area textField"
numberOfToppingsInstructionsTextField:setFillColor( 1, 1, 1 )

local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local XL
    local Large
 
    XL = 10
    Large = 6
    costOfPizza = (0.75 + 1 + ( sizeOfPizza * 0.5 )) + ((0.75 + 1 + ( sizeOfPizza * 0.5 )) * 0.13)

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )
