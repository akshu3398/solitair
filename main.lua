--[[
    Solitaire

    Authore: Abhinav Lakhani
    akshu3398@gmail.com
]]

-- require("src/Dependencies")
require 'src/Dependencies'

math.randomseed(os.time())

-- local queenOfHearts = Card('hearts', QUEEN)
local queenOfHearts = Card(QUEEN, HEARTS, 0, 0)
local gameBoard = GameBoard{}

function love.load()
    love.window.setTitle('Solitaire')
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT)
    
    love.mouse.buttonsPressed = {}
end

function love.keypressed( key )
    if key == 'escape' then
        love.event.quit()
    end
end

function love.mousepressed(x, y, button)
    love.mouse.buttonsPressed[button] = true
end

function love.mouse.wasButtonPressed(button)
    return love.mouse.buttonsPressed[button]
end

function love.update(dt)
    queenOfHearts:update(dt)

    love.mouse.buttonsPressed = {}
end

function love.draw()
    --[[for x = 1, CARDS_IN_SUIT do
        love.graphics.draw(gTextures['cards'], gCardQuads['hearts'][x],
            (x - 1) * CARD_WIDTH, 0)        
    end]]
    gameBoard:render()
    queenOfHearts:render(0, 0)
end