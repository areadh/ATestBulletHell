player = {
    speed = 400,
    x = 60,
    y = 60,
    height = 60,
    width = 60,
    hp = 98
}

healthBar = {
    posX = player.x - 20,
    posY = player.y - 30,
    canDraw = false,
    timer = 2
}

player.spriteA = love.graphics.newImage("sprites/playerA.png")
player.spriteA:setFilter("nearest", "nearest")

function player.moveRight(dt)
    player.x = player.x + player.speed * dt
end

function player.moveLeft(dt)
    player.x = player.x - player.speed * dt
end

function player.moveUp(dt)
    player.y = player.y - player.speed * dt
end

function player.moveDown(dt)
    player.y = player.y + player.speed * dt
end

function player.draw()
    love.graphics.draw(player.spriteA, player.x, player.y, 0, 2, 2)
end

--////////--

function healthBar.update()
    healthBar.posX = player.x - 20
    healthBar.posY = player.y - 30
end

function healthBar.drawHp()
    if healthBar.canDraw == true then
        love.graphics.setColor(1,0,0)
        love.graphics.rectangle("fill", healthBar.posX, healthBar.posY, player.hp, 20)
        love.graphics.setColor(1,1,1)
    end
end

function healthBar.controlDamage()
    local currentHp = player.hp
    if currentHp > player.hp then
        healthBar.canDraw = true
    end
end

function healthBar.damageTimer(dt)
    if healthBar.timer >= 0 then
        healthBar.timer = healthBar.timer - dt
    else
        healthBar.canDraw = false
        healthBar.timer = 2
    end
end

return Aplayer