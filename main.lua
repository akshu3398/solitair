--[[
    Solitaire

    Authore: Abhinav Lakhani
    akshu3398@gmail.com
]]

-- require("src/Dependencies")
require 'src/Dependencies'

-- local queenOfHearts = Card('hearts', QUEEN)
local queenOfHearts = Card(QUEEN, HEARTS)

function love.load()
    love.window.setTitle('Solitaire')
end

function love.keypressed( key )
    if key == 'escape' then
        love.event.quit()
    end
end

function love.update( dt )
    -- body
end

function love.draw()
    --[[for x = 1, CARDS_IN_SUIT do
        love.graphics.draw(gTextures['cards'], gCardQuads['hearts'][x],
            (x - 1) * CARD_WIDTH, 0)        
    end]]
    queenOfHearts:render(0, 0)
end