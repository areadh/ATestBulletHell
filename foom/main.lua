local Aplayer = require("Aplayer")

function love.update(dt)
    if love.keyboard.isDown("left") then
        player.moveLeft(dt)
    end

    if love.keyboard.isDown("right") then
        player.moveRight(dt)
    end

    if love.keyboard.isDown("up") then
        player.moveUp(dt)
    end

    if love.keyboard.isDown("down") then
        player.moveDown(dt)
    end

    --/////--

    healthBar.update()
end

function love.draw()
    player.draw()
    healthBar.drawHp()
end