function love.load()
    ListOfRects = {}
    ListOfRects.length = 0
    Width = love.graphics.getWidth()
end

function love.update(dt)
    for i = 1, #ListOfRects do
        local rect = ListOfRects[i]
        rect.x = rect.x + 100 * dt

        if rect.x > Width - 100 then
            ListOfRects.rect = nil
            -- ListOfRects.length = ListOfRects.length - 1
        end
    end
end

function love.draw()
    love.graphics.print(ListOfRects.length, 300, 300)
    for i = 1, #ListOfRects do
        local rect = ListOfRects[i]
        love.graphics.rectangle("line", rect.x, rect.y, rect.width, rect.height)
    end
end

function love.keypressed(key)
    if key == "space" then
        table.insert(ListOfRects, CreateRect())
    end
end

function CreateRect(x, y, width, height, speed)
    local rect = {}
    rect.x = x or 100
    rect.y = y or 100
    rect.width = width or 70
    rect.height = height or 90
    rect.speed = speed or 100
    ListOfRects.length = ListOfRects.length + 1
    return rect
end
