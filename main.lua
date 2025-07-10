function love.load()
    ListOfRects = {}
end

function love.update(dt)
    if love.keyboard.isDown("right") then
        rect.x = rect.x + rect.speed * dt
    elseif love.keyboard.isDown("left") then
        rect.x = rect.x - rect.speed * dt
    end
end

function love.draw()
    love.graphics.rectangle("line", X, 50, 200, 150)
end

function love.keypressed(key)
    if key == "space" then
        CreateRect()
    end
end

function CreateRect(x, y, width, height, speed)
    local rect = {}
    rect.x = x or 100
    rect.y = y or 100
    rect.width = width or 70
    rect.height = height or 90
    rect.speed = speed or 100
    table.insert(ListOfRects, rect)
end
