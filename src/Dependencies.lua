Class = require 'lib/class'

require 'src/constants'
require 'src/GameBoard'
require 'src/Card'
require 'src/Deck'
require 'src/Util'

gTextures = {
    ['card-back'] = love.graphics.newImage('graphics/cardBack.png'),
    ['cards'] = love.graphics.newImage('graphics/playingCards.png')
}

gQuads = {
    ['cards'] = GenerateQuads(gTextures['cards'], CARD_WIDTH, CARD_HEIGHT)
}

gCardQuads = {
    ['hearts'] = {},
    ['diamonds'] = {},
    ['clubs'] = {},
    ['spades'] = {}
}

-- allocate all proper cards to the right subtables
AllocateSubtable(gCardQuads['hearts'], gQuads['cards'], HEARTS_START, HEARTS_START + CARDS_IN_SUIT - 1)
AllocateSubtable(gCardQuads['diamonds'], gQuads['cards'], DIAMONDS_START, DIAMONDS_START + CARDS_IN_SUIT - 1)
AllocateSubtable(gCardQuads['clubs'], gQuads['cards'], CLUBS_START, CLUBS_START + CARDS_IN_SUIT - 1)
AllocateSubtable(gCardQuads['spades'], gQuads['cards'], SPADES_START, SPADES_START + CARDS_IN_SUIT - 1)

gCardQuads['hearts'] = ResortCards(gCardQuads['hearts'])
gCardQuads['diamonds'] = ResortCards(gCardQuads['diamonds'])
gCardQuads['clubs'] = ResortCards(gCardQuads['clubs'])
gCardQuads['spades'] = ResortCards(gCardQuads['spades'])

print(Dump(gCardQuads['hearts']))