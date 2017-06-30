room = {}
room.r1 = {-50, 50}
room.r2 = {650, 50}
room.r3 = {750, 450}
room.r4 = {750, -350}
room.r5 = {750, -750}
room.r6 = {250, -550}
room.r7 = {1150, -450}
room.r8 = {1250, -650}
room.r9 = {1950, -250}
room.r10 = {1750, -1150}
room.r11 = {850, -1150}
room.r12 = {250, -550}
room.r13 = {250, -550}
room.r14 = {350, 550}
room.r16 = {450, 2450}

event = class:new()
event.time_offset = 0
event.concluded = false
function event:effect()

end

event_controller = {}

--[[
event_controller.ex = event:new()
function event_controller.ex:effect(recall)
    if self.concluded then
        return
    end
    self.time_offset = main_clock:getTime()
    --message_controller:add_message({x = 930, y = -100, data = "I can't do very\nmuch for you", color = 'blue4', born = self.time_offset, death = self.time_offset + 4})
    --portal_controller:add_portal({x1 = 750, y1 = -250, x2 = 750, y2 = -350, born = self.time_offset + 13, event_id = 'b'})
    self.concluded = true
end
]]

event_controller.r1 = event:new()
function event_controller.r1:effect(recall)
    player.room = 'r1'
    if self.concluded then
        return
    end
    --ao passar pelo portal 1
    self.time_offset = main_clock:getTime()
    --message_controller:add_message({x = 830, y = 315, data = "I must show you\nthe truth", color = "blue4", born = self.time_offset+13, death = false})
    self.concluded = true
end

event_controller.r2 = event:new()
function event_controller.r2:effect(recall)
    player.room = 'r2'
    if self.concluded then
        return
    end
    --ao passar pelo portal 1
    self.time_offset = main_clock:getTime()
    --message_controller:add_message({x = 830, y = 315, data = "I must show you\nthe truth", color = "blue4", born = self.time_offset+13, death = false})
    portal_controller:add_portal({x1 = 750, y1 = -250, x2 = 750, y2 = -350, born = self.time_offset, room = 'r2', event_id = 'r4'})
    portal_controller:add_portal({x1 = 750, y1 = 350, x2 = 750, y2 = 550, born = self.time_offset, room = 'r2', event_id = 'r3'})
    self.concluded = true
end

event_controller.r3 = event:new()
function event_controller.r3:effect(recall)
    player.room = 'r3'
    if self.concluded then
        return
    end
    --ao passar pelo portal 1
    self.time_offset = main_clock:getTime()
    --message_controller:add_message({x = 830, y = 315, data = "I must show you\nthe truth", color = "blue4", born = self.time_offset+13, death = false})
    portal_controller:add_portal({x1 = 750, y1 = 450, x2 = 750, y2 = 250, born = self.time_offset, room = 'r3', event_id = 'r2'})
    portal_controller:add_portal({x1 = 450, y1 = 550, x2 = 350, y2 = 550, born = self.time_offset, room = 'r3', event_id = 'r14'})
    portal_controller:add_portal({x1 = 1050, y1 = 550, x2 = 1350, y2 = 750, born = self.time_offset, room = 'r3', event_id = 'r18'})

    self.concluded = true
end

event_controller.r4 = event:new()
function event_controller.r4:effect(recall)
    player.room = 'r4'
    if self.concluded then
        return
    end
    --ao passar pelo portal 2
    self.time_offset = main_clock:getTime()
    message_controller:end_all(main_clock:getTime() + 1)
    portal_controller:add_portal({x1 = 750, y1 = -650, x2 = 750, y2 = -750, born = self.time_offset, room = 'r4', event_id = 'r5'})
    portal_controller:add_portal({x1 = 1050, y1 = -450, x2 = 1150, y2 = -450, born = self.time_offset, room = 'r4', event_id = 'r7'})
    
    self.concluded = true
end


event_controller.r5 = event:new()
function event_controller.r5:effect(recall)
    player.room = 'r5'
    if self.concluded then
        return
    end
    --ao passar pelo portal 4
    self.time_offset = main_clock:getTime()
    --message_controller:add_message({x = 930, y = -100, data = "I can't do very\nmuch for you", color = 'blue4', born = self.time_offset, death = self.time_offset + 4})
    portal_controller:add_portal({x1 = 250, y1 = -650, x2 = 250, y2 = -550, born = self.time_offset, room = 'r5', event_id = 'r6'})
    
    self.concluded = true
end

event_controller.r6 = event:new()
function event_controller.r6:effect(recall)
    player.room = 'r6'
    if self.concluded then
        return
    end
    --ao passar pelo portal 4
    self.time_offset = main_clock:getTime()
    --message_controller:add_message({x = 930, y = -100, data = "I can't do very\nmuch for you", color = 'blue4', born = self.time_offset, death = self.time_offset + 4})
    portal_controller:add_portal({x1 = 350, y1 = -450, x2 = 450, y2 = -450, born = self.time_offset, room = 'r6', event_id = 'r4'})
    
    self.concluded = true
end

event_controller.r7 = event:new()
function event_controller.r7:effect(recall)
    player.room = 'r7'
    if self.concluded then
        return
    end
    --ao passar pelo portal 4
    self.time_offset = main_clock:getTime()
    --message_controller:add_message({x = 930, y = -100, data = "I can't do very\nmuch for you", color = 'blue4', born = self.time_offset, death = self.time_offset + 4})
    portal_controller:add_portal({x1 = 1450, y1 = -550, x2 = 1250, y2 = -650, born = self.time_offset, room = 'r7', event_id = 'r8'})
    portal_controller:add_portal({x1 = 1850, y1 = -250, x2 = 1950, y2 = -250, born = self.time_offset, room = 'r7', event_id = 'r9'})
    
    self.concluded = true
end

event_controller.r8 = event:new()
function event_controller.r8:effect(recall)
    player.room = 'r8'
    if self.concluded then
        return
    end
    --ao passar pelo portal 4
    self.time_offset = main_clock:getTime()
    --message_controller:add_message({x = 930, y = -100, data = "I can't do very\nmuch for you", color = 'blue4', born = self.time_offset, death = self.time_offset + 4})
    portal_controller:add_portal({x1 = 950, y1 = -1150, x2 = 850, y2 = -1150, born = self.time_offset, room = 'r8', event_id = 'r11'})
    portal_controller:add_portal({x1 = 1550, y1 = -1150, x2 = 1750, y2 = -1150, born = self.time_offset, room = 'r8', event_id = 'r10'})
    self.concluded = true
end

event_controller.r9 = event:new()
function event_controller.r9:effect(recall)
    player.room = 'r9'
    if self.concluded then
        return
    end
    --ao passar pelo portal 4
    self.time_offset = main_clock:getTime()
    --message_controller:add_message({x = 930, y = -100, data = "I can't do very\nmuch for you", color = 'blue4', born = self.time_offset, death = self.time_offset + 4})
    portal_controller:add_portal({x1 = 1850, y1 = -150, x2 = 1750, y2 = -150, born = self.time_offset, room = 'r9', event_id = 'r7'})
    self.concluded = true
end

event_controller.r10 = event:new()
function event_controller.r10:effect(recall)
    if recall then
        player.balls = 0
        icon_controller.list[8].active = false
        cwall_controller.list[7]:close()
        if not ball_ammo_controller:exists(1750, -850) then
            ball_ammo_controller:add(1750, -850, 8)
        end
    end

    player.room = 'r10'
    if self.concluded then
        return
    end
    --ao passar pelo portal 4
    self.time_offset = main_clock:getTime()
    --message_controller:add_message({x = 930, y = -100, data = "I can't do very\nmuch for you", color = 'blue4', born = self.time_offset, death = self.time_offset + 4})
    portal_controller:add_portal({x1 = 2450, y1 = -1950, x2 = 2650, y2 = -1950, born = self.time_offset, room = 'r10', event_id = 'r12'})
    portal_controller:add_portal({x1 = 1850, y1 = -1050, x2 = 1850, y2 = -850, born = self.time_offset, room = 'r10', event_id = 'r10'})
    portal_controller:add_portal({x1 = 2350, y1 = -850, x2 = 2350, y2 = -1050, born = self.time_offset, room = 'r10', event_id = 'r10'})
    portal_controller:add_portal({x1 = 1750, y1 = -1250, x2 = 1450, y2 = -1250, born = self.time_offset, room = 'r10', event_id = 'r8'})
    portal_controller:add_portal({x1 = 2250, y1 = -1350, x2 = 2450, y2 = -1350, born = self.time_offset, room = 'r10', event_id = 'r10'})
    portal_controller:add_portal({x1 = 2250, y1 = -1250, x2 = 2250, y2 = -1450, born = self.time_offset, room = 'r10', event_id = 'r10'})
    portal_controller:add_portal({x1 = 2150, y1 = -1650, x2 = 1950, y2 = -1650, born = self.time_offset, room = 'r10', event_id = 'r10'})
    portal_controller:add_portal({x1 = 2050, y1 = -1650, x2 = 1750, y2 = -1650, born = self.time_offset, room = 'r10', event_id = 'r10'})

    ball_ammo_controller:add(1750, -850, 8)
    self.concluded = true
end

event_controller.r11 = event:new()
function event_controller.r11:effect(recall)
    player.room = 'r11' 
    if self.concluded then
        return
    end
    --ao passar pelo portal 4
    self.time_offset = main_clock:getTime()
    --message_controller:add_message({x = 930, y = -100, data = "I can't do very\nmuch for you", color = 'blue4', born = self.time_offset, death = self.time_offset + 4})
    portal_controller:add_portal({x1 = 1550, y1 = -550, x2 = 1550, y2 = -450, born = self.time_offset, room = 'r11', event_id = 'r7'})
    self.concluded = true
end

event_controller.r12 = event:new()
function event_controller.r12:effect(recall)
    player.room = 'r12' 
    if self.concluded then
        return
    end
    self.time_offset = main_clock:getTime()
    self.concluded = true
end

event_controller.r13 = event:new()
function event_controller.r13:effect(recall)
    player.room = 'r13' 
    if self.concluded then
        return
    end
    self.time_offset = main_clock:getTime()
    self.concluded = true
end

event_controller.r14 = event:new()
function event_controller.r14:effect(recall)
    player.room = 'r14' 
    if self.concluded then
        return
    end
    self.time_offset = main_clock:getTime()
    portal_controller:add_portal({x1 = 350, y1 = 1150, x2 = 450, y2 = 1150, born = self.time_offset, room = 'r14', event_id = 'r15'})

    self.concluded = true
end

event_controller.r15 = event:new()
function event_controller.r15:effect(recall)
    player.room = 'r15' 
    if self.concluded then
        return
    end
    self.time_offset = main_clock:getTime()
    portal_controller:add_portal({x1 = 750, y1 = 850, x2 = 750, y2 = 750, born = self.time_offset, room = 'r15', event_id = 'r3'})
    portal_controller:add_portal({x1 = 450, y1 = 2250, x2 = 450, y2 = 2450, born = self.time_offset, room = 'r15', event_id = 'r16'})

    self.concluded = true
end

event_controller.r16 = event:new()
function event_controller.r16:effect(recall)
    player.room = 'r16' 
    if self.concluded then
        return
    end

    self.time_offset = main_clock:getTime()
    portal_controller:add_portal({x1 = -150, y1 = 2650, x2 = -150, y2 = 2850, born = self.time_offset, room = 'r16', event_id = 'r16'})
    portal_controller:add_portal({x1 = 50, y1 = 2750, x2 = 50, y2 = 2950, born = self.time_offset, room = 'r16', event_id = 'r16'})
    portal_controller:add_portal({x1 = 250, y1 = 2850, x2 = 250, y2 = 3050, born = self.time_offset, room = 'r16', event_id = 'r16'})
    portal_controller:add_portal({x1 = -350, y1 = 2750, x2 = -550, y2 = 2750, born = self.time_offset, room = 'r16', event_id = 'r16'})
    portal_controller:add_portal({x1 = -850, y1 = 2750, x2 = -850, y2 = 3050, born = self.time_offset, room = 'r16', event_id = 'r16'})
    portal_controller:add_portal({x1 = -850, y1 = 2850, x2 = -850, y2 = 3150, born = self.time_offset, room = 'r16', event_id = 'r16'})
    portal_controller:add_portal({x1 = -850, y1 = 2850, x2 = -850, y2 = 3150, born = self.time_offset, room = 'r16', event_id = 'r16'})
    portal_controller:add_portal({x1 = -850, y1 = 3350, x2 = -850, y2 = 3550, born = self.time_offset, room = 'r16', event_id = 'r16'})

    portal_controller:add_portal({x1 = 250, y1 = 3250, x2 = 250, y2 = 3450, born = self.time_offset, room = 'r16', event_id = 'r16'})
    portal_controller:add_portal({x1 = 350, y1 = 3250, x2 = 350, y2 = 3450, born = self.time_offset, room = 'r16', event_id = 'r16'})
    portal_controller:add_portal({x1 = 350, y1 = 3650, x2 = 350, y2 = 3850, born = self.time_offset, room = 'r16', event_id = 'r16'})
    portal_controller:add_portal({x1 = 50, y1 = 3850, x2 = 50, y2 = 3750, born = self.time_offset, room = 'r16', event_id = 'r16'})
    portal_controller:add_portal({x1 = -150, y1 = 3950, x2 = 50, y2 = 3950, born = self.time_offset, room = 'r16', event_id = 'r16'})
    portal_controller:add_portal({x1 = -450, y1 = 4050, x2 = -450, y2 = 4150, born = self.time_offset, room = 'r16', event_id = 'r16'})

    ball_ammo_controller:add(-450, 2550, 3)
    self.concluded = true
end

message = class:new()
message.x = 0
message.y = 0
message.data = ''
message.color = 'black'
message.scale = 0.3
message.born = 0
message.death = 0
message.delay = 0.5
function message:draw(now)
    local a = 0
    if self.death then
        a = math.min(now - self.born, self.death - now)
    else
        a = now - self.born
    end
    local ah = 255
    if a < self.delay then
        ah = (a/self.delay)*255
    end
    local c = colors[self.color]
    love.graphics.setColor(c[1], c[2], c[3], ah)
    love.graphics.print(self.data, self.x, self.y, 0, self.scale, self.scale)
end
off_e = {}

message_controller = {}
message_controller.list = {
    message:new({x = 0, y = -180, data = '', color = 'pink3', born = 1, death = 4}),
    message:new({x = -30, y = 220, data = "", color = 'pink3', born = 4, death = 8}),
    message:new({x = 40, y = 240, data = "", color = 'pink3', born = 8, death = 13}),
    message:new({x = 60, y = 260, data = "", color = 'blue4', born = 13, death = 17}),
}

function message_controller:draw()
    local now = main_clock:getTime()
    for i = 1, #self.list do
        if self.list[i].death then
            if now > self.list[i].born and now < self.list[i].death then
                self.list[i]:draw(now)
            end
        else
            if now > self.list[i].born then
                self.list[i]:draw(now)
            end
        end
    end
end

function message_controller:update(dt)
    for i = 1, #self.list do
        if self.list[i].death and self.list[i].death < main_clock:getTime() then
            table.remove(self.list, i)
            break
        end
    end
end

function message_controller:add_message(msg)
    table.insert(self.list, message:new((msg)))
end

function message_controller:end_all(death_time)
    for i = 1, #self.list do
        if not self.list[i].death then
            self.list[i].death = death_time
        end
    end
end


wall = {}
wall.body = nil
wall.shape = nil
wall.fixture = nil
wall.color = 'black'

function wall:new(x1, y1, x2, y2, color)
    local o = {}
    local mx, my = (x1 + x2)/2, (y1 + y2)/2
    o.body = love.physics.newBody(world, mx, my, 'static')
    o.shape = love.physics.newEdgeShape(x1 - mx, y1 - my, x2 - mx, y2 - my)
    o.fixture = love.physics.newFixture(o.body, o.shape)
    o.color = color
    setmetatable(o, self)
    self.__index = self
    return o
end

function wall:draw()
    if not self:isOnCamera() then
        return
    end
    love.graphics.setLineWidth(5)
    if type(self.color) == 'string' then
        love.graphics.setColor(colors[self.color])
    else
        love.graphics.setColor(self.color)
    end
    local x1, y1, x2, y2 = self:getPoints()

    love.graphics.line(x1, y1, x2, y2)
    love.graphics.circle('line', x1, y1, 4, 50)
    love.graphics.circle('fill', x1, y1, 4, 50)
    love.graphics.circle('line', x2, y2, 4, 50)
    love.graphics.circle('fill', x2, y2, 4, 50)
end

function wall:isOnCamera()
    local x1, y1, x2, y2 = self:getPoints()
    return distance(x1, y1, player:getX(), player:getY()) < width*0.55 or 
        distance(x2, y2, player:getX(), player:getY()) < width*0.55
end

function wall:getPoints()
    local x1, y1, x2, y2 = self.shape:getPoints()
    return self.body:getX() + x1, self.body:getY() + y1, 
        self.body:getX() + x2, self.body:getY() + y2
end

walls = {}
walls.list = {

--ROOM 1
    wall:new(0, 0, 100, 0, {100, 150, 170}),
    wall:new(0, 0, 0, -100, {100, 80, 170}),
    wall:new(100, 0, 100, -100, {100, 80, 170}),
    wall:new(100, -100, 200, -100, {100, 150, 170}),
    wall:new(200, 0, 300, 0, {100, 150, 170}),
    wall:new(200, 0, 200, -100, {100, 80, 170}),
    wall:new(300, 0, 300, -100, {100, 80, 170}),
    wall:new(300, -100, 400, -100, {100, 150, 170}),
    wall:new(400, 0, 500, 0, {100, 150, 170}),
    wall:new(400, 0, 400, -100, {100, 80, 170}),
    wall:new(500, 0, 500, -100, {100, 80, 170}),
    wall:new(500, -100, 600, -100, {100, 150, 170}),
    wall:new(-100, 200, 0, 200, {100, 150, 170}),
    wall:new(-100, 200, -100, 100, {100, 80, 170}),
    wall:new(0, 200, 0, 100, {100, 80, 170}),
    wall:new(0, 100, 100, 100, {100, 150, 170}),
    wall:new(100, 200, 200, 200, {100, 150, 170}),
    wall:new(100, 200, 100, 100, {100, 80, 170}),
    wall:new(200, 200, 200, 100, {100, 80, 170}),
    wall:new(200, 100, 300, 100, {100, 150, 170}),
    wall:new(300, 200, 400, 200, {100, 150, 170}),
    wall:new(300, 200, 300, 100, {100, 80, 170}),
    wall:new(400, 200, 400, 100, {100, 80, 170}),
    wall:new(400, 100, 500, 100, {100, 150, 170}),
    wall:new(0, -100, -100, -100, {100, 150, 170}),
    wall:new(-100, -100, -100, 0, {100, 80, 170}),
    wall:new(-100, 0, -100, 100, {100, 150, 170}),
    wall:new(600, -100, 600, 0, {150, 20, 120}),
    wall:new(600, 0, 600, 100, {100, 20, 170}),
    wall:new(500, 200, 600, 200, {100, 150, 170}),
    wall:new(500, 200, 500, 100, {100, 80, 170}),
    wall:new(600, 200, 600, 100, {150, 20, 150}),

--ROOM 2
    wall:new(600, -100, 600, -200, {100, 20, 170}),
    wall:new(600, -200, 700, -200, {150, 20, 120}),
    wall:new(700, -200, 700, -300, {100, 20, 170}),
    wall:new(700, -300, 800, -300, {150, 20, 120}),
    wall:new(800, -300, 800, -200, {100, 20, 170}),
    wall:new(800, -200, 900, -200, {150, 20, 120}),
    wall:new(900, -200, 900, -100, {100, 20, 170}),
    wall:new(900, -100, 900, 0, {150, 20, 120}),
    wall:new(900, 0, 900, 100, {100, 20, 170}),
    wall:new(900, 100, 900, 200, {150, 20, 120}),
    wall:new(900, 200, 900, 300, {100, 20, 170}),
    wall:new(900, 300, 800, 300, {150, 20, 120}),
    wall:new(800, 300, 800, 400, {100, 20, 170}),
    wall:new(800, 400, 700, 400, {150, 20, 120}),
    wall:new(700, 400, 700, 300, {100, 20, 170}),
    wall:new(700, 300, 600, 300, {150, 20, 120}),
    wall:new(600, 300, 600, 200, {100, 20, 170}),

--ROOM 3
    wall:new(800, 400, 900, 400, {80, 30, 240}),
    wall:new(900, 400, 1000, 400, {80, 30, 240}),
    wall:new(1000, 400, 1000, 500, {150, 80, 240}),
    wall:new(1000, 500, 1100, 500, {80, 30, 240}),
    wall:new(1100, 500, 1100, 600, {80, 30, 240}),
    wall:new(1100, 600, 1000, 600, {80, 30, 240}),
    wall:new(1000, 600, 1000, 700, {150, 80, 240}),
    wall:new(1000, 700, 900, 700, {150, 80, 240}),
    wall:new(900, 700, 800, 700, {80, 30, 240}),
    wall:new(800, 700, 800, 800, {150, 80, 240}),
    wall:new(800, 800, 700, 800, {150, 80, 240}),
    wall:new(700, 800, 700, 700, {80, 30, 240}),
    wall:new(700, 700, 600, 700, {150, 80, 240}),
    wall:new(600, 700, 500, 700, {80, 30, 240}),
    wall:new(500, 700, 500, 600, {150, 80, 240}),
    wall:new(500, 600, 400, 600, {80, 30, 240}),
    wall:new(400, 600, 400, 500, {150, 80, 240}),
    wall:new(400, 500, 500, 500, {80, 30, 240}),
    wall:new(500, 500, 500, 400, {150, 80, 240}),
    wall:new(500, 400, 600, 400, {80, 30, 240}),
    wall:new(600, 400, 700, 400, {150, 80, 240}),

--ROOM 4
    wall:new(800, -300, 900, -300, {200, 30, 80}),
    wall:new(900, -300, 1000, -300, {200, 30, 80}),
    wall:new(1000, -300, 1000, -400, {200, 80, 150}),
    wall:new(1000, -400, 1100, -400, {200, 30, 80}),
    wall:new(1100, -400, 1100, -500, {200, 30, 80}),
    wall:new(1100, -500, 1000, -500, {200, 30, 80}),
    wall:new(1000, -500, 1000, -600, {200, 80, 150}),
    wall:new(1000, -600, 900, -600, {200, 80, 150}),
    wall:new(900, -600, 800, -600, {200, 30, 80}),
    wall:new(800, -600, 800, -700, {200, 80, 150}),
    wall:new(800, -700, 700, -700, {200, 80, 150}),
    wall:new(700, -700, 700, -600, {200, 30, 80}),
    wall:new(700, -600, 600, -600, {200, 80, 150}),
    wall:new(600, -600, 500, -600, {200, 30, 80}),
    wall:new(500, -600, 500, -500, {200, 80, 150}),
    wall:new(500, -500, 400, -500, {200, 30, 80}),
    wall:new(400, -500, 400, -400, {200, 80, 150}),
    wall:new(400, -400, 500, -400, {200, 30, 80}),
    wall:new(500, -400, 500, -300, {200, 80, 150}),
    wall:new(500, -300, 600, -300, {200, 30, 80}),
    wall:new(600, -300, 700, -300, {200, 80, 150}),

--ROOM 5
    wall:new(800, -700, 800, -800, {200, 20, 50}),
    wall:new(800, -800, 800, -900, {210, 0, 20}),
    wall:new(800, -900, 700, -900, {200, 20, 50}),
    wall:new(700, -900, 600, -900, {210, 0, 20}),
    wall:new(600, -900, 500, -900, {200, 20, 50}),
    wall:new(500, -900, 400, -900, {210, 0, 20}),
    wall:new(400, -900, 400, -1000, {200, 20, 50}),
    wall:new(400, -1000, 300, -1000, {210, 0, 20}),
    wall:new(300, -1000, 200, -1000, {200, 20, 50}),
    wall:new(200, -1000, 100, -1000, {210, 0, 20}),
    wall:new(100, -1000, 100, -900, {200, 20, 50}),
    wall:new(100, -900, 100, -800, {210, 0, 20}),
    wall:new(100, -800, 100, -700, {200, 20, 50}),
    wall:new(100, -700, 200, -700, {210, 0, 20}),
    wall:new(200, -700, 200, -600, {200, 20, 50}),
    wall:new(200, -600, 300, -600, {210, 0, 20}),
    wall:new(300, -600, 300, -700, {200, 20, 50}),
    wall:new(300, -700, 400, -700, {210, 0, 20}),
    wall:new(400, -700, 400, -800, {200, 20, 50}),
    wall:new(400, -800, 500, -800, {210, 0, 20}),
    wall:new(500, -800, 600, -800, {200, 20, 50}),
    wall:new(600, -800, 700, -800, {210, 0, 20}),
    wall:new(700, -800, 700, -700, {200, 20, 50}),

--ROOM 6
    wall:new(300, -600, 300, -500, {210, 0, 30}),
    wall:new(300, -500, 400, -500, {210, 30, 80}),
    wall:new(300, -500, 300, -400, {210, 0, 30}),
    wall:new(300, -400, 300, -300, {210, 30, 80}),
    wall:new(300, -300, 200, -300, {210, 0, 30}),
    wall:new(200, -300, 100, -300, {210, 30, 80}),
    wall:new(100, -300, 0, -300, {210, 0, 30}),
    wall:new(0, -300, -100, -300, {210, 30, 80}),
    wall:new(-100, -300, -200, -300, {210, 0, 30}),
    wall:new(400, -400, 400, -300, {210, 30, 80}),
    wall:new(400, -300, 400, -200, {210, 0, 30}),
    wall:new(400, -200, 300, -200, {210, 30, 80}),
    wall:new(300, -200, 200, -200, {210, 0, 30}),
    wall:new(200, -200, 100, -200, {210, 30, 80}),
    wall:new(100, -200, 0, -200, {210, 0, 30}),
    wall:new(0, -200, -100, -200, {210, 30, 80}),
    wall:new(-100, -200, -200, -200, {210, 0, 30}),
    wall:new(-200, -200, -300, -200, {210, 30, 80}),
    wall:new(200, -600, 100, -600, {210, 0, 30}),
    wall:new(100, -600, 0, -600, {210, 30, 80}),
    wall:new(0, -600, -100, -600, {210, 0, 30}),
    wall:new(-100, -600, -200, -600, {210, 30, 80}),
    wall:new(-200, -600, -300, -600, {210, 0, 30}),
    wall:new(-300, -600, -300, -500, {210, 30, 80}),
    wall:new(-300, -500, -300, -400, {210, 0, 30}),
    wall:new(-300, -400, -300, -300, {210, 30, 80}),
    wall:new(-300, -300, -300, -200, {210, 0, 30}),

--ROOM 7
    wall:new(1100, -500, 1200, -500, {190, 10, 10}), 
    wall:new(1200, -500, 1300, -500, {170, 10, 90}),
    wall:new(1300, -500, 1400, -500, {190, 10, 10}),
    wall:new(1400, -500, 1400, -600, {170, 10, 90}),
    wall:new(1400, -600, 1500, -600, {180, 10, 45}),
    wall:new(1500, -600, 1500, -500, {190, 10, 10}),  
    wall:new(1500, -500, 1600, -500, {170, 10, 90}),
    wall:new(1600, -500, 1700, -500, {190, 10, 10}),
    wall:new(1700, -500, 1800, -500, {170, 10, 90}),
    wall:new(1800, -500, 1800, -400, {190, 10, 10}),
    wall:new(1800, -400, 1800, -300, {170, 10, 90}),
    wall:new(1800, -300, 1900, -300, {170, 10, 90}),
    wall:new(1900, -300, 1900, -200, {190, 10, 10}),
    wall:new(1900, -200, 1800, -200, {170, 10, 90}),
    wall:new(1800, -200, 1800, -100, {190, 10, 10}),
    wall:new(1800, -100, 1700, -100, {170, 10, 90}),
    wall:new(1700, -100, 1600, -100, {190, 10, 10}),
    wall:new(1600, -100, 1500, -100, {170, 10, 90}),
    wall:new(1500, -100, 1400, -100, {190, 10, 10}),
    wall:new(1400, -100, 1300, -100, {170, 10, 90}),
    wall:new(1300, -100, 1200, -100, {190, 10, 10}),
    wall:new(1200, -100, 1200, -200, {170, 10, 90}),
    wall:new(1200, -200, 1200, -300, {190, 10, 10}),
    wall:new(1200, -300, 1200, -400, {170, 10, 90}),
    wall:new(1200, -400, 1100, -400, {190, 10, 10}),

--ROOM 8
    wall:new(1200, -600, 1200, -700, {190, 10, 10}),
    wall:new(1200, -700, 1100, -700, {170, 10, 90}),
    wall:new(1100, -700, 1000, -700, {170, 10, 90}),
    wall:new(1000, -700, 1000, -800, {190, 10, 10}),
    wall:new(1000, -800, 1000, -900, {170, 10, 90}),
    wall:new(1000, -900, 1000, -1000, {190, 10, 10}),
    wall:new(1000, -1000, 1000, -1100, {190, 10, 10}),
    wall:new(1000, -1100, 900, -1100, {170, 10, 90}),
    wall:new(900, -1100, 900, -1200, {190, 10, 10}),
    wall:new(900, -1200, 1000, -1200, {170, 10, 90}),
    wall:new(1000, -1200, 1000, -1300, {190, 10, 10}),
    wall:new(1000, -1300, 1000, -1400, {170, 10, 90}),
    wall:new(1000, -1400, 1100, -1400, {190, 10, 10}),
    wall:new(1100, -1400, 1200, -1400, {170, 10, 90}),
    wall:new(1200, -1400, 1300, -1400, {190, 10, 10}),
    wall:new(1300, -1400, 1400, -1400, {170, 10, 90}),
    wall:new(1400, -1400, 1500, -1400, {190, 10, 10}),
    wall:new(1500, -1200, 1600, -1200, {170, 10, 90}),
    wall:new(1600, -1200, 1600, -1100, {190, 10, 10}),
    wall:new(1600, -1100, 1500, -1100, {170, 10, 90}),
    wall:new(1500, -1300, 1500, -1200, {190, 10, 10}),
    wall:new(1500, -1400, 1500, -1300, {170, 10, 90}),
    wall:new(1500, -1100, 1500, -1000, {190, 10, 10}),
    wall:new(1500, -1000, 1500, -900, {170, 10, 90}),
    wall:new(1500, -900, 1500, -800, {190, 10, 10}),
    wall:new(1500, -800, 1500, -700, {170, 10, 90}),
    wall:new(1500, -700, 1400, -700, {190, 10, 10}),
    wall:new(1400, -700, 1300, -700, {170, 10, 90}),
    wall:new(1300, -700, 1300, -600, {170, 10, 90}),
    wall:new(1300, -600, 1200, -600, {190, 10, 10}),

--ROOM 9
    wall:new(1900, -300, 2000, -300, {200, 10, 150}),
    wall:new(2000, -300, 2100, -300, {200, 90, 150}),
    wall:new(2100, -300, 2200, -300, {200, 10, 150}),
    wall:new(2200, -300, 2300, -300, {200, 90, 150}),
    wall:new(2300, -300, 2400, -300, {200, 10, 150}),
    wall:new(2400, -300, 2500, -300, {200, 90, 150}),
    wall:new(2500, -300, 2600, -300, {200, 10, 150}),
    wall:new(2600, -300, 2700, -300, {200, 90, 150}),
    wall:new(2700, -300, 2800, -300, {200, 10, 150}),
    wall:new(2800, -300, 2900, -300, {200, 90, 150}),
    wall:new(2900, -300, 3000, -300, {200, 10, 150}),
    wall:new(3000, -300, 3100, -200, {200, 80, 130}),
    wall:new(3100, -200, 3200, -100, {200, 10, 110}),
    wall:new(3200, -100, 3300, 0, {200, 70, 90}),
    wall:new(3300, 0, 3400, 100, {200, 8, 70}),
    wall:new(3400, 100, 3500, 200, {200, 50, 50}),
    wall:new(3500, 200, 3600, 300, {200, 5, 40}),
    wall:new(3600, 300, 3700, 400, {200, 40, 30}),
    wall:new(3700, 400, 3800, 500, {200, 5, 20}),
    wall:new(3800, 500, 3900, 600, {200, 5, 10}),
    wall:new(3900, 600, 4000, 700, {200, 0, 0}),
    wall:new(2000, -200, 2100, -200, {200, 10, 150}),
    wall:new(2100, -200, 2200, -200, {200, 90, 150}),
    wall:new(2200, -200, 2300, -200, {200, 10, 150}),
    wall:new(2300, -200, 2400, -200, {200, 90, 150}),
    wall:new(2400, -200, 2500, -200, {200, 10, 150}),
    wall:new(2500, -200, 2600, -200, {200, 90, 150}),
    wall:new(2600, -200, 2700, -200, {200, 10, 150}),
    wall:new(2700, -200, 2800, -200, {200, 90, 150}),
    wall:new(2800, -200, 2900, -200, {200, 10, 150}),
    wall:new(2900, -200, 3000, -100, {200, 80, 130}),
    wall:new(3000, -100, 3100, 0, {200, 8, 110}),
    wall:new(3100, 0, 3200, 100, {200, 90, 70}),
    wall:new(3200, 100, 3300, 200, {200, 7, 70}),
    wall:new(3300, 200, 3400, 300, {200, 50, 60}),
    wall:new(3400, 300, 3500, 400, {200, 6, 50}),
    wall:new(3500, 400, 3600, 500, {200, 30, 40}),
    wall:new(3600, 500, 3700, 600, {200, 5, 30}),
    wall:new(3700, 600, 3800, 700, {200, 15, 20}),
    wall:new(3800, 700, 3900, 800, {200, 5, 10}),
    wall:new(3900, 800, 4000, 800, {180, 0, 0}),
    wall:new(4000, 700, 4000, 800, {180, 0, 0}),
    wall:new(1800, -100, 1900, -100, {200, 80, 130}),
    wall:new(1900, -100, 2000, -100, {200, 10, 150}),
    wall:new(2000, -100, 2000, -200, {200, 80, 130}),

--ROOM 10
    wall:new(1700, -1200, 1700, -1100, {180, 10, 180}),
    wall:new(1700, -1100, 1700, -1000, {130, 60, 130}),
    wall:new(1700, -1000, 1700, -900, {180, 10, 180}),
    wall:new(1700, -900, 1700, -800, {130, 60, 130}),
    wall:new(1700, -800, 1700, -700, {180, 10, 180}),
    wall:new(1700, -700, 1800, -700, {130, 60, 130}),
    wall:new(1800, -700, 1900, -700, {180, 10, 180}),
    wall:new(1900, -700, 2000, -700, {130, 60, 130}),
    wall:new(2000, -700, 2100, -700, {180, 10, 180}),
    wall:new(2100, -700, 2200, -700, {130, 60, 130}),
    wall:new(2200, -700, 2300, -700, {180, 10, 180}),
    wall:new(2300, -700, 2400, -700, {130, 60, 130}),
    wall:new(2400, -700, 2500, -700, {180, 10, 180}),
    wall:new(2500, -700, 2500, -800, {130, 60, 130}),
    wall:new(2500, -800, 2500, -900, {180, 10, 180}),
    wall:new(2500, -900, 2500, -1000, {130, 60, 130}),
    wall:new(2500, -1000, 2500, -1100, {180, 10, 180}),
    wall:new(2500, -1100, 2500, -1200, {130, 60, 130}),
    wall:new(2500, -1200, 2500, -1300, {180, 10, 180}),
    wall:new(2500, -1300, 2500, -1400, {130, 60, 130}),
    wall:new(2500, -1400, 2500, -1500, {180, 10, 180}),
    wall:new(2500, -1500, 2500, -1600, {130, 60, 130}),
    wall:new(2500, -1600, 2500, -1700, {180, 10, 180}),
    wall:new(2500, -1700, 2500, -1800, {130, 60, 130}),
    wall:new(2500, -1800, 2500, -1900, {180, 10, 180}),
    wall:new(2500, -1900, 2500, -2000, {130, 60, 130}),
    wall:new(2500, -2000, 2400, -2000, {180, 10, 180}),
    wall:new(2400, -2000, 2300, -2000, {130, 60, 130}),
    wall:new(2300, -2000, 2200, -2000, {180, 10, 180}),
    wall:new(2200, -2000, 2100, -2000, {130, 60, 130}),
    wall:new(2100, -2000, 2000, -2000, {180, 10, 180}),
    wall:new(2000, -2000, 1900, -2000, {130, 60, 130}),
    wall:new(1900, -2000, 1800, -2000, {180, 10, 180}),
    wall:new(1800, -2000, 1700, -2000, {130, 60, 130}),
    wall:new(1700, -2000, 1700, -1900, {180, 10, 180}),
    wall:new(1700, -1900, 1700, -1800, {130, 60, 130}),
    wall:new(1700, -1800, 1700, -1700, {180, 10, 180}),
    wall:new(1700, -1700, 1700, -1600, {130, 60, 130}),
    wall:new(1700, -1600, 1700, -1500, {180, 10, 180}),
    wall:new(1700, -1500, 1700, -1400, {130, 60, 130}),
    wall:new(1700, -1400, 1700, -1300, {180, 10, 180}),
    wall:new(1700, -1300, 1700, -1200, {130, 60, 130}),
    wall:new(1700, -1200, 1700, -1100, {180, 10, 180}),
    wall:new(2200, -2000, 2200, -1900, {180, 10, 120}),
    wall:new(2200, -1900, 2200, -1800, {180, 10, 120}),
    wall:new(2200, -1800, 2300, -1800, {180, 10, 120}),
    wall:new(2400, -1800, 2500, -1800, {180, 10, 120}),
    wall:new(2500, -1700, 2400, -1700, {180, 10, 120}),
    wall:new(2400, -1700, 2300, -1700, {180, 10, 120}),
    wall:new(2300, -1700, 2200, -1700, {180, 10, 120}),
    wall:new(2200, -1700, 2100, -1700, {180, 10, 120}),
    wall:new(2100, -1700, 2100, -1800, {180, 10, 120}),
    wall:new(2100, -1800, 2100, -1900, {180, 10, 120}),
    wall:new(1700, -1200, 1800, -1200, {180, 10, 120}),
    wall:new(1800, -1200, 1800, -1100, {180, 10, 120}),
    wall:new(1700, -900, 1800, -900, {180, 10, 120}),
    wall:new(1800, -900, 1900, -900, {180, 10, 120}),
    wall:new(1900, -900, 1900, -800, {180, 10, 120}),
    wall:new(1900, -800, 2000, -800, {180, 10, 120}),
    wall:new(1900, -800, 1800, -800, {180, 10, 120}),
    wall:new(1800, -1000, 1900, -1000, {180, 10, 120}),
    wall:new(1900, -1000, 2000, -1000, {180, 10, 120}),
    wall:new(1800, -1100, 1800, -1000, {180, 10, 120}),
    wall:new(2000, -900, 2100, -900, {180, 10, 120}),
    wall:new(2100, -900, 2200, -900, {180, 10, 120}),
    wall:new(2200, -900, 2200, -1000, {180, 10, 120}),
    wall:new(2200, -800, 2100, -800, {180, 10, 120}),
    wall:new(2100, -800, 2000, -800, {180, 10, 120}),
    wall:new(2200, -800, 2300, -800, {180, 10, 120}),
    wall:new(2300, -800, 2300, -900, {180, 10, 120}),
    wall:new(2300, -900, 2400, -900, {180, 10, 120}),
    wall:new(2400, -900, 2400, -800, {180, 10, 120}),
    wall:new(2400, -800, 2400, -700, {180, 10, 120}),
    wall:new(2200, -1000, 2300, -1000, {180, 10, 120}),
    wall:new(2300, -1000, 2400, -1000, {180, 10, 120}),
    wall:new(2400, -1000, 2500, -1000, {180, 10, 120}),
    wall:new(2000, -900, 2100, -900, {180, 10, 120}),
    wall:new(2100, -1000, 2100, -1100, {180, 10, 120}),
    wall:new(1900, -1000, 1900, -1100, {180, 10, 120}),
    wall:new(2300, -1000, 2300, -1100, {180, 10, 120}),
    wall:new(2100, -1100, 2000, -1100, {180, 10, 120}),
    wall:new(2100, -1100, 2200, -1100, {180, 10, 120}),
    wall:new(2400, -1100, 2400, -1200, {180, 10, 120}),
    wall:new(2400, -1200, 2400, -1300, {180, 10, 120}),
    wall:new(2400, -1300, 2400, -1400, {180, 10, 120}),
    wall:new(2400, -1400, 2500, -1400, {180, 10, 120}),
    wall:new(2300, -1100, 2300, -1200, {180, 10, 120}),
    wall:new(2300, -1200, 2300, -1300, {180, 10, 120}),
    wall:new(2200, -1100, 2200, -1200, {180, 10, 120}),
    wall:new(2200, -1200, 2200, -1300, {180, 10, 120}),
    wall:new(2200, -1300, 2300, -1300, {180, 10, 120}),
    wall:new(1900, -1100, 1900, -1200, {180, 10, 120}),
    wall:new(1900, -1200, 1900, -1300, {180, 10, 120}),
    wall:new(1900, -1200, 2000, -1200, {180, 10, 120}),
    wall:new(2000, -1200, 2100, -1200, {180, 10, 120}),
    wall:new(2300, -1300, 2200, -1300, {180, 10, 120}),
    wall:new(2200, -1300, 2100, -1300, {180, 10, 120}),
    wall:new(2100, -1300, 2000, -1300, {180, 10, 120}),
    wall:new(2000, -1300, 2000, -1400, {180, 10, 120}),
    wall:new(2000, -1400, 2000, -1500, {180, 10, 120}),
    wall:new(2200, -1400, 2300, -1400, {180, 10, 120}),
    wall:new(2300, -1400, 2300, -1500, {180, 10, 120}),
    wall:new(2300, -1500, 2400, -1500, {180, 10, 120}),
    wall:new(2400, -1500, 2400, -1600, {180, 10, 120}),
    wall:new(2400, -1600, 2300, -1600, {180, 10, 120}),
    wall:new(2300, -1600, 2200, -1600, {180, 10, 120}),
    wall:new(2200, -1600, 2100, -1600, {180, 10, 120}),
    wall:new(2000, -1500, 2100, -1500, {180, 10, 120}),
    wall:new(2200, -1500, 2200, -1400, {180, 10, 120}),
    wall:new(2100, -1400, 2200, -1400, {180, 10, 120}),
    wall:new(2100, -1700, 2000, -1700, {180, 10, 120}),
    wall:new(2000, -1600, 2000, -1700, {180, 10, 120}),
    wall:new(2100, -1600, 2000, -1600, {180, 10, 120}),
    wall:new(2000, -1600, 1900, -1600, {180, 10, 120}),
    wall:new(1900, -1600, 1900, -1500, {180, 10, 120}),
    wall:new(1900, -1500, 1900, -1400, {180, 10, 120}),
    wall:new(1900, -1400, 1900, -1300, {180, 10, 120}),
    wall:new(2000, -1700, 1900, -1700, {180, 10, 120}),
    wall:new(1900, -1700, 1800, -1700, {180, 10, 120}),
    wall:new(1800, -1700, 1800, -1600, {180, 10, 120}),
    wall:new(1800, -1600, 1800, -1500, {180, 10, 120}),
    wall:new(1800, -1500, 1800, -1400, {180, 10, 120}),
    wall:new(1800, -1400, 1800, -1300, {180, 10, 120}),
    wall:new(1800, -1300, 1800, -1200, {180, 10, 120}),
    wall:new(2000, -2000, 2000, -1900, {180, 10, 120}),
    wall:new(2000, -1900, 2000, -1800, {180, 10, 120}),

--ROOM 11
    wall:new(900, -1200, 800, -1200, {200, 0, 70}),
    wall:new(800, -1200, 700, -1200, {200, 60, 70}),
    wall:new(700, -1200, 600, -1200, {200, 0, 70}),
    wall:new(600, -1200, 500, -1200, {200, 60, 70}),
    wall:new(500, -1200, 400, -1200, {200, 0, 70}),
    wall:new(400, -1200, 400, -1100, {200, 60, 70}),
    wall:new(400, -1100, 400, -1000, {200, 0, 70}),
    wall:new(1500, -700, 1600, -700, {200, 60, 70}),
    wall:new(1600, -700, 1600, -600, {200, 0, 70}),
    wall:new(1600, -600, 1600, -500, {200, 60, 70}),

--ROOM 14
    wall:new(400, 500, 300, 500, {100, 120, 150}),
    wall:new(300, 500, 200, 500, {150, 120, 150}),
    wall:new(200, 500, 100, 500, {100, 120, 150}),
    wall:new(100, 500, 0, 500, {150, 120, 150}),
    wall:new(0, 500, 0, 600, {100, 120, 150}),
    wall:new(0, 600, 0, 700, {150, 120, 150}),
    wall:new(0, 700, 0, 800, {100, 120, 150}),
    wall:new(0, 800, 0, 900, {150, 120, 150}),
    wall:new(400, 600, 300, 600, {100, 120, 150}),
    wall:new(300, 600, 200, 600, {150, 120, 150}),
    wall:new(200, 600, 100, 600, {100, 120, 150}),
    wall:new(100, 600, 100, 700, {150, 120, 150}),
    wall:new(100, 700, 100, 800, {100, 120, 150}),
    wall:new(100, 800, 100, 900, {150, 120, 150}),
    wall:new(100, 900, 200, 900, {100, 120, 150}),
    wall:new(200, 900, 300, 1000, {150, 120, 150}),
    wall:new(300, 1000, 300, 1100, {150, 120, 150}),
    wall:new(300, 1100, 400, 1100, {100, 120, 150}),
    wall:new(400, 1100, 400, 1200, {150, 120, 150}),
    wall:new(400, 1200, 300, 1200, {100, 120, 150}),
    wall:new(300, 1200, 300, 1300, {150, 120, 150}),
    wall:new(300, 1300, 200, 1400, {100, 120, 150}),
    wall:new(200, 1400, 100, 1400, {150, 120, 150}),
    wall:new(100, 1400, 0, 1400, {100, 120, 150}),
    wall:new(0, 1400, -100, 1400, {150, 120, 150}),
    wall:new(-100, 1400,-200, 1300, {100, 120, 150}),
    wall:new(-200, 1300, -200, 1200, {150, 120, 150}),
    wall:new(-200, 1200, -200, 1100, {100, 120, 150}),
    wall:new(-200, 1100, -200, 1000, {150, 120, 150}),
    wall:new(-200, 1000, -100, 900, {100, 120, 150}),
    wall:new(-100, 900, 0, 900, {100, 120, 150}),

--ROOM 15
    wall:new(400, 1100, 500, 1100, {100, 120, 150}),
    wall:new(500, 1100, 600, 1000, {100, 120, 100}),
    wall:new(600, 1000, 600, 900, {100, 120, 150}),
    wall:new(600, 900, 700, 800, {100, 120, 100}),
    wall:new(800, 800, 900, 900, {100, 120, 150}),
    wall:new(900, 900, 900, 1000, {100, 120, 100}),
    wall:new(900, 1000, 900, 1100, {100, 120, 150}),
    wall:new(900, 1100, 1000, 1200, {100, 120, 100}),
    wall:new(1000, 1200, 1100, 1300, {100, 120, 150}),
    wall:new(1100, 1300, 1200, 1400, {100, 120, 100}),
    wall:new(1200, 1400, 1300, 1400, {100, 120, 150}),
    wall:new(1300, 1400, 1400, 1400, {100, 120, 100}),
    wall:new(1400, 1400, 1500, 1400, {100, 120, 150}),
    wall:new(1500, 1400, 1600, 1400, {100, 120, 100}),
    wall:new(1600, 1400, 1700, 1400, {100, 120, 150}),
    wall:new(1700, 1400, 1700, 1500, {100, 120, 100}),
    wall:new(1700, 1500, 1600, 1500, {100, 120, 150}),
    wall:new(1600, 1500, 1500, 1500, {100, 120, 100}),
    wall:new(1500, 1500, 1400, 1500, {100, 120, 150}),
    wall:new(1400, 1500, 1300, 1500, {100, 120, 100}),
    wall:new(1300, 1500, 1200, 1500, {100, 120, 150}),
    wall:new(1200, 1500, 1100, 1400, {100, 120, 100}),
    wall:new(1100, 1400, 1000, 1300, {100, 120, 150}),
    wall:new(1000, 1300, 900, 1200, {100, 120, 150}),
    wall:new(900, 1200, 900, 1300, {100, 120, 100}),
    wall:new(900, 1300, 900, 1400, {100, 120, 150}),
    wall:new(900, 1400, 800, 1500, {100, 120, 100}),
    wall:new(800, 1500, 700, 1500, {100, 120, 150}),
    wall:new(700, 1500, 600, 1500, {100, 120, 100}),
    wall:new(600, 1500, 500, 1500, {100, 120, 150}),
    wall:new(500, 1500, 500, 1600, {100, 120, 100}),
    wall:new(500, 1600, 500, 1700, {100, 120, 150}),
    wall:new(500, 1700, 500, 1800, {100, 120, 150}),
    wall:new(500, 1800, 500, 1900, {100, 120, 100}),
    wall:new(500, 1900, 500, 2000, {100, 120, 150}),
    wall:new(500, 2000, 500, 2100, {100, 120, 150}),
    wall:new(500, 2100, 500, 2200, {100, 120, 100}),
    wall:new(500, 2200, 500, 2300, {100, 120, 150}),
    wall:new(500, 2300, 400, 2300, {100, 120, 100}),
    wall:new(400, 2300, 400, 2200, {100, 120, 150}),
    wall:new(400, 2200, 400, 2100, {100, 120, 100}),
    wall:new(400, 2100, 400, 2000, {100, 120, 150}),
    wall:new(400, 2000, 400, 1900, {100, 120, 100}),
    wall:new(400, 1900, 400, 1800, {100, 120, 150}),
    wall:new(400, 1800, 400, 1700, {100, 120, 100}),
    wall:new(400, 1700, 400, 1600, {100, 120, 150}),
    wall:new(400, 1600, 400, 1500, {100, 120, 100}),
    wall:new(400, 1500, 400, 1400, {100, 120, 150}),
    wall:new(400, 1400, 500, 1400, {100, 120, 100}),
    wall:new(500, 1400, 600, 1400, {100, 120, 150}),
    wall:new(600, 1400, 600, 1300, {100, 120, 100}),
    wall:new(600, 1300, 500, 1200, {100, 120, 150}),
    wall:new(500, 1200, 400, 1200, {100, 120, 100}),

--ROOM 16 - very BIG labyrinth
    wall:new(500, 2400, 500, 2500, {90, 110, 130}),
    wall:new(500, 2500, 500, 2600, {90, 110, 130}),
    wall:new(500, 2600, 500, 2700, {90, 110, 130}),
    wall:new(500, 2700, 500, 2800, {90, 110, 130}),
    wall:new(500, 2800, 500, 2900, {90, 110, 130}),
    wall:new(500, 2900, 500, 3000, {90, 110, 130}),
    wall:new(500, 3000, 500, 3100, {90, 110, 130}),
    wall:new(500, 3100, 500, 3200, {90, 110, 130}),
    wall:new(500, 3200, 500, 3300, {90, 110, 130}),
    wall:new(500, 3300, 500, 3400, {90, 110, 130}),
    wall:new(500, 3400, 500, 3500, {90, 110, 130}),
    wall:new(500, 3500, 500, 3600, {90, 110, 130}),
    wall:new(500, 3600, 500, 3700, {90, 110, 130}),
    wall:new(500, 3700, 500, 3800, {90, 110, 130}),
    wall:new(500, 3800, 500, 3900, {90, 110, 130}),
    wall:new(500, 3900, 500, 4000, {90, 110, 130}),
    wall:new(500, 4000, 500, 4100, {90, 110, 130}),
    wall:new(-1000, 2400, -1000, 2500, {90, 110, 130}),
    wall:new(-1000, 2500, -1000, 2600, {90, 110, 130}),
    wall:new(-1000, 2600, -1000, 2700, {90, 110, 130}),
    wall:new(-1000, 2700, -1000, 2800, {90, 110, 130}),
    wall:new(-1000, 2800, -1000, 2900, {90, 110, 130}),
    wall:new(-1000, 2900, -1000, 3000, {90, 110, 130}),
    wall:new(-1000, 3000, -1000, 3100, {90, 110, 130}),
    wall:new(-1000, 3100, -1000, 3200, {90, 110, 130}),
    wall:new(-1000, 3200, -1000, 3300, {90, 110, 130}),
    wall:new(-1000, 3300, -1000, 3400, {90, 110, 130}),
    wall:new(-1000, 3400, -1000, 3500, {90, 110, 130}),
    wall:new(-1000, 3500, -1000, 3600, {90, 110, 130}),
    wall:new(-1000, 3600, -1000, 3700, {90, 110, 130}),
    wall:new(-1000, 3700, -1000, 3800, {90, 110, 130}),
    wall:new(-1000, 3800, -1000, 3900, {90, 110, 130}),
    wall:new(-1000, 3900, -1000, 4000, {90, 110, 130}),
    wall:new(-1000, 4000, -1000, 4100, {90, 110, 130}),
    wall:new(500, 2400, 400, 2400, {90, 110, 130}),
    wall:new(400, 2400, 300, 2400, {90, 110, 130}),
    wall:new(300, 2400, 200, 2400, {90, 110, 130}),
    wall:new(200, 2400, 100, 2400, {90, 110, 130}),
    wall:new(100, 2400, 0, 2400, {90, 110, 130}),
    wall:new(0, 2400, -100, 2400, {90, 110, 130}),
    wall:new(-100, 2400, -200, 2400, {90, 110, 130}),
    wall:new(-200, 2400, -300, 2400, {90, 110, 130}),
    wall:new(-300, 2400, -400, 2400, {90, 110, 130}),
    wall:new(-400, 2400, -500, 2400, {90, 110, 130}),
    wall:new(-500, 2400, -600, 2400, {90, 110, 130}),
    wall:new(-600, 2400, -700, 2400, {90, 110, 130}),
    wall:new(-700, 2400, -800, 2400, {90, 110, 130}),
    wall:new(-800, 2400, -900, 2400, {90, 110, 130}),
    wall:new(-900, 2400, -1000, 2400, {90, 110, 130}),
    wall:new(500, 4100, 400, 4100, {90, 110, 130}),
    wall:new(400, 4100, 300, 4100, {90, 110, 130}),
    wall:new(300, 4100, 200, 4100, {90, 110, 130}),
    wall:new(200, 4100, 100, 4100, {90, 110, 130}),
    wall:new(100, 4100, 0, 4100, {90, 110, 130}),
    wall:new(0, 4100, -100, 4100, {90, 110, 130}),
    wall:new(-100, 4100, -200, 4100, {90, 110, 130}),
    wall:new(-200, 4100, -300, 4100, {90, 110, 130}),
    wall:new(-300, 4100, -400, 4100, {90, 110, 130}),
    wall:new(-400, 4100, -500, 4100, {90, 110, 130}),
    wall:new(-500, 4100, -600, 4100, {90, 110, 130}),
    wall:new(-600, 4100, -700, 4100, {90, 110, 130}),
    wall:new(-700, 4100, -800, 4100, {90, 110, 130}),
    wall:new(-800, 4100, -900, 4100, {90, 110, 130}),
    wall:new(-900, 4100, -1000, 4100, {90, 110, 130}),
    wall:new(400, 2500, 300, 2500, {80, 100, 120}),
    wall:new(300, 2500, 200, 2500, {80, 100, 120}),
    wall:new(200, 2500, 100, 2500, {80, 100, 120}),
    wall:new(100, 2500, 0, 2500, {80, 100, 120}),
    wall:new(0, 2500, -100, 2500, {80, 100, 120}),
    wall:new(-100, 2500, -200, 2500, {80, 100, 120}),
    wall:new(-200, 2500, -200, 2600, {80, 100, 120}),
    wall:new(-200, 2600, -200, 2700, {80, 100, 120}),
    wall:new(-200, 2700, -100, 2700, {80, 100, 120}),
    wall:new(-100, 2700, -100, 2600, {80, 100, 120}),
    wall:new(0, 2700, 0, 2600, {80, 100, 120}),
    wall:new(0, 2600, 0, 2500, {80, 100, 120}),
    wall:new(0, 2700, 0, 2800, {80, 100, 120}),
    wall:new(0, 2800, -100, 2800, {80, 100, 120}),
    wall:new(-100, 2800, -200, 2800, {80, 100, 120}),
    wall:new(-200, 2800, -300, 2800, {80, 100, 120}),
    wall:new(-300, 2800, -400, 2800, {80, 100, 120}),
    wall:new(-400, 2800, -400, 2700, {80, 100, 120}),
    wall:new(-400, 2700, -300, 2700, {80, 100, 120}),
    wall:new(-300, 2700, -300, 2600, {80, 100, 120}),
    wall:new(-300, 2600, -300, 2500, {80, 100, 120}),
    wall:new(-300, 2500, -300, 2400, {80, 100, 120}),
    wall:new(-200, 2800, -200, 2900, {80, 100, 120}),
    wall:new(-200, 2900, -100, 2900, {80, 100, 120}),
    wall:new(-100, 2900, 0, 2900, {80, 100, 120}),
    wall:new(0, 2900, 100, 2900, {80, 100, 120}),
    wall:new(100, 2900, 200, 2900, {80, 100, 120}),
    wall:new(200, 2900, 200, 2800, {80, 100, 120}),
    wall:new(200, 2800, 200, 2700, {80, 100, 120}),
    wall:new(200, 2700, 200, 2600, {80, 100, 120}),
    wall:new(200, 2600, 200, 2500, {80, 100, 120}),
    wall:new(0, 2800, 100, 2800, {80, 100, 120}),
    wall:new(100, 2800, 100, 2700, {80, 100, 120}),
    wall:new(100, 2700, 100, 2600, {80, 100, 120}),
    wall:new(0, 2900, 0, 3000, {80, 100, 120}),
    wall:new(0, 3000, 100, 3000, {80, 100, 120}),
    wall:new(100, 3000, 200, 3000, {80, 100, 120}),
    wall:new(200, 3000, 300, 3000, {80, 100, 120}),
    wall:new(300, 3000, 400, 3000, {80, 100, 120}),
    wall:new(400, 3000, 500, 3000, {80, 100, 120}),
    wall:new(200, 2900, 300, 2900, {80, 100, 120}),
    wall:new(300, 2900, 300, 2800, {80, 100, 120}),
    wall:new(300, 2800, 300, 2700, {80, 100, 120}),
    wall:new(300, 2700, 300, 2600, {80, 100, 120}),
    wall:new(400, 2500, 400, 2600, {80, 100, 120}),
    wall:new(400, 2600, 400, 2700, {80, 100, 120}),
    wall:new(400, 2700, 400, 2800, {80, 100, 120}),
    wall:new(400, 2800, 400, 2900, {80, 100, 120}),
    wall:new(400, 2900, 400, 3000, {80, 100, 120}),
    wall:new(300, 3000, 300, 3100, {70, 120, 120}),
    wall:new(300, 3100, 300, 3200, {70, 120, 120}),
    wall:new(300, 3200, 300, 3300, {70, 120, 120}),
    wall:new(300, 3300, 400, 3300, {70, 120, 120}),
    wall:new(400, 3300, 400, 3200, {70, 120, 120}),
    wall:new(400, 3200, 400, 3100, {70, 120, 120}),
    wall:new(300, 3300, 200, 3300, {70, 120, 120}),
    wall:new(200, 3300, 200, 3200, {70, 120, 120}),
    wall:new(200, 3200, 200, 3100, {70, 120, 120}),
    wall:new(200, 3100, 200, 3000, {70, 120, 120}),
    wall:new(500, 3400, 400, 3400, {70, 120, 120}),
    wall:new(400, 3400, 300, 3400, {70, 120, 120}),
    wall:new(300, 3400, 200, 3400, {70, 120, 120}),
    wall:new(200, 3400, 100, 3400, {70, 120, 120}),
    wall:new(100, 3400, 100, 3300, {70, 120, 120}),
    wall:new(100, 3300, 100, 3200, {70, 120, 120}),
    wall:new(100, 3200, 100, 3100, {70, 120, 120}),
    wall:new(100, 3100, 0, 3100, {70, 120, 120}),
    wall:new(0, 3100, -100, 3100, {70, 120, 120}),
    wall:new(-100, 3100, -100, 3000, {70, 120, 120}),
    wall:new(-100, 3000, -200, 3000, {70, 120, 120}),
    wall:new(-200, 3000, -300, 3000, {70, 120, 120}),
    wall:new(-300, 3000, -300, 2900, {70, 120, 120}),
    wall:new(-400, 2800, -400, 2900, {70, 120, 120}),
    wall:new(-400, 2900, -500, 2900, {70, 120, 120}),
    wall:new(-500, 2900, -600, 2900, {70, 120, 120}),
    wall:new(-600, 2900, -700, 2900, {70, 120, 120}),
    wall:new(-700, 2900, -700, 2800, {70, 120, 120}),
    wall:new(-700, 2800, -700, 2700, {70, 120, 120}),
    wall:new(-700, 2700, -700, 2600, {70, 120, 120}),
    wall:new(-700, 2600, -800, 2600, {70, 120, 120}),
    wall:new(-800, 2600, -900, 2600, {70, 120, 120}),
    wall:new(-900, 2600, -900, 2500, {70, 120, 120}),
    wall:new(-900, 2600, -900, 2700, {70, 120, 120}),
    wall:new(-900, 2700, -900, 2800, {70, 120, 120}),
    wall:new(-900, 2800, -900, 2900, {70, 120, 120}),
    wall:new(-900, 2900, -800, 2900, {70, 120, 120}),
    wall:new(-800, 2900, -800, 2800, {70, 120, 120}),
    wall:new(-800, 2800, -800, 2700, {70, 120, 120}),
    wall:new(-800, 2500, -700, 2500, {70, 120, 120}),
    wall:new(-700, 2500, -600, 2500, {70, 120, 120}),
    wall:new(-600, 2500, -600, 2600, {70, 120, 120}),
    wall:new(-600, 2600, -600, 2700, {70, 120, 120}),
    wall:new(-600, 2700, -600, 2800, {70, 120, 120}),
    wall:new(-600, 2800, -500, 2800, {70, 120, 120}),
    wall:new(-500, 2800, -500, 2700, {70, 120, 120}),
    wall:new(-500, 2700, -500, 2600, {70, 120, 120}),
    wall:new(-500, 2600, -500, 2500, {70, 120, 120}),
    wall:new(-500, 2500, -400, 2500, {70, 120, 120}),
    wall:new(-400, 2500, -400, 2600, {70, 120, 120}),
    wall:new(-600, 2500, -600, 2400, {70, 120, 120}),
    wall:new(-700, 2900, -700, 3000, {70, 120, 120}),
    wall:new(-700, 3000, -800, 3000, {70, 120, 120}),
    wall:new(-800, 3000, -900, 3000, {70, 120, 120}),
    wall:new(-900, 3000, -900, 3100, {70, 120, 120}),
    wall:new(-900, 3100, -900, 3200, {70, 120, 120}),
    wall:new(-900, 3200, -900, 3300, {70, 120, 120}),
    wall:new(-900, 3300, -900, 3400, {70, 120, 120}),
    wall:new(-900, 3400, -800, 3400, {70, 120, 120}),
    wall:new(-800, 3400, -800, 3300, {70, 120, 120}),
    wall:new(-800, 3300, -800, 3200, {70, 120, 120}),
    wall:new(-800, 3200, -800, 3100, {70, 120, 120}),
    wall:new(-800, 3100, -900, 3100, {70, 120, 120}),
    wall:new(-800, 3100, -700, 3100, {70, 120, 120}),
    wall:new(-700, 3100, -600, 3100, {70, 120, 120}),
    wall:new(-600, 3100, -500, 3100, {70, 120, 120}),
    wall:new(-500, 3100, -400, 3100, {70, 120, 120}),
    wall:new(-400, 3100, -300, 3100, {70, 120, 120}),
    wall:new(-300, 3100, -300, 3000, {70, 120, 120}),
    wall:new(-600, 3100, -600, 3000, {70, 120, 120}),
    wall:new(-400, 3100, -400, 3000, {70, 120, 120}),
    wall:new(-500, 3000, -500, 2900, {70, 120, 120}),
    wall:new(-1000, 3500, -900, 3500, {70, 120, 120}),
    wall:new(-900, 3500, -800, 3500, {70, 120, 120}),
    wall:new(-800, 3500, -700, 3500, {70, 120, 120}),
    wall:new(-700, 3500, -700, 3400, {70, 120, 120}),
    wall:new(-700, 3400, -700, 3300, {70, 120, 120}),
    wall:new(-700, 3300, -700, 3200, {70, 120, 120}),
    wall:new(-700, 3200, -600, 3200, {70, 120, 120}),
    wall:new(-600, 3200, -500, 3200, {70, 120, 120}),
    wall:new(-500, 3200, -400, 3200, {70, 120, 120}),
    wall:new(-400, 3200, -300, 3200, {70, 120, 120}),
    wall:new(-300, 3200, -200, 3200, {70, 120, 120}),
    wall:new(-200, 3200, -100, 3200, {70, 120, 120}),
    wall:new(-100, 3200, 0, 3200, {70, 120, 120}),
    wall:new(-200, 3200, -200, 3100, {70, 120, 120}),
    wall:new(0, 3200, 0, 3300, {70, 120, 120}),
    wall:new(0, 3300, 0, 3400, {70, 120, 120}),
    wall:new(0, 3400, 0, 3500, {70, 120, 120}),
    wall:new(0, 3500, 100, 3500, {70, 120, 120}),
    wall:new(100, 3500, 100, 3600, {70, 120, 120}),
    wall:new(100, 3600, 100, 3700, {70, 120, 120}),
    wall:new(100, 3700, 200, 3700, {70, 120, 120}),
    wall:new(200, 3700, 200, 3800, {70, 120, 120}),
    wall:new(200, 3800, 300, 3800, {70, 120, 120}),
    wall:new(300, 3800, 300, 3900, {70, 120, 120}),
    wall:new(300, 3900, 300, 4000, {70, 120, 120}),
    wall:new(300, 4000, 200, 4000, {70, 120, 120}),
    wall:new(300, 3800, 400, 3800, {70, 120, 120}),
    wall:new(100, 4100, 100, 4000, {70, 120, 120}),
    wall:new(100, 4000, 100, 3900, {70, 120, 120}),
    wall:new(100, 3900, 200, 3900, {70, 120, 120}),
    wall:new(100, 3900, 100, 3800, {70, 120, 120}),
    wall:new(100, 3800, 0, 3800, {70, 120, 120}),
    wall:new(0, 3800, -100, 3800, {70, 120, 120}),
    wall:new(-100, 3800, -200, 3800, {70, 120, 120}),
    wall:new(-200, 3800, -300, 3800, {70, 120, 120}),
    wall:new(-300, 3800, -300, 3900, {70, 120, 120}),
    wall:new(-300, 3900, -300, 4000, {70, 120, 120}),
    wall:new(-300, 4000, -200, 4000, {70, 120, 120}),
    wall:new(-200, 4000, -100, 4000, {70, 120, 120}),
    wall:new(-100, 4000, -100, 3900, {70, 120, 120}),
    wall:new(-100, 3900, -200, 3900, {70, 120, 120}),
    wall:new(400, 4100, 400, 4000, {70, 120, 120}),
    wall:new(400, 4000, 400, 3900, {70, 120, 120}),
    wall:new(400, 3900, 400, 3800, {70, 120, 120}),
    wall:new(400, 3700, 300, 3700, {70, 120, 120}),
    wall:new(300, 3700, 300, 3600, {70, 120, 120}),
    wall:new(300, 3600, 200, 3600, {70, 120, 120}),
    wall:new(200, 3600, 200, 3500, {70, 120, 120}),
    wall:new(200, 3500, 200, 3400, {70, 120, 120}),
    wall:new(300, 3400, 300, 3500, {70, 120, 120}),
    wall:new(300, 3500, 400, 3500, {70, 120, 120}),
    wall:new(400, 3500, 400, 3600, {70, 120, 120}),
    wall:new(400, 3600, 400, 3700, {70, 120, 120}),
    wall:new(0, 4100, 0, 4000, {70, 120, 120}),
    wall:new(0, 4000, 0, 3900, {70, 120, 120}),
    wall:new(0, 3900, 0, 3700, {70, 120, 120}),
    wall:new(0, 3800, 0, 3700, {70, 120, 120}),
    wall:new(0, 3700, 0, 3600, {70, 120, 120}),
    wall:new(0, 3600, -100, 3600, {70, 120, 120}),
    wall:new(-100, 3600, -100, 3500, {70, 120, 120}),
    wall:new(-100, 3500, -100, 3400, {70, 120, 120}),
    wall:new(-100, 3400, -100, 3300, {70, 120, 120}),
    wall:new(-100, 3300, -200, 3300, {70, 120, 120}),
    wall:new(-200, 3300, -200, 3400, {70, 120, 120}),
    wall:new(-200, 3400, -200, 3500, {70, 120, 120}),
    wall:new(-100, 3600, -200, 3600, {70, 120, 120}),
    wall:new(-200, 3600, -300, 3600, {70, 120, 120}),
    wall:new(-100, 3700, -200, 3700, {70, 120, 120}),
    wall:new(-200, 3700, -300, 3700, {70, 120, 120}),
    wall:new(-300, 3700, -400, 3700, {70, 120, 120}),
    wall:new(-400, 3700, -400, 3800, {70, 120, 120}),
    wall:new(-400, 3800, -400, 3900, {70, 120, 120}),
    wall:new(-400, 3900, -400, 4000, {70, 120, 120}),
    wall:new(-400, 4000, -400, 4100, {70, 120, 120}),
    wall:new(-400, 3700, -400, 3600, {70, 120, 120}),
    wall:new(-400, 3600, -400, 3500, {70, 120, 120}),
    wall:new(-400, 3500, -400, 3400, {70, 120, 120}),
    wall:new(-400, 3400, -400, 3300, {70, 120, 120}),
    wall:new(-400, 3300, -300, 3300, {70, 120, 120}),
    wall:new(-300, 3300, -300, 3400, {70, 120, 120}),
    wall:new(-300, 3400, -300, 3500, {70, 120, 120}),
    wall:new(-500, 3500, -500, 3400, {70, 120, 120}),
    wall:new(-500, 3400, -500, 3300, {70, 120, 120}),
    wall:new(-500, 3600, -500, 3700, {70, 120, 120}),
    wall:new(-500, 3700, -500, 3800, {70, 120, 120}),
    wall:new(-500, 3800, -500, 3900, {70, 120, 120}),
    wall:new(-500, 3900, -500, 4000, {70, 120, 120}),
    wall:new(-500, 4000, -500, 4100, {70, 120, 120}),
    wall:new(-500, 3600, -600, 3600, {70, 120, 120}),
    wall:new(-600, 3600, -700, 3600, {70, 120, 120}),
    wall:new(-700, 3600, -800, 3600, {70, 120, 120}),
    wall:new(-800, 3600, -900, 3600, {70, 120, 120}),
    wall:new(-900, 3600, -900, 3700, {70, 120, 120}),
    wall:new(-900, 3700, -900, 3800, {70, 120, 120}),
    wall:new(-900, 3800, -900, 3900, {70, 120, 120}),
    wall:new(-900, 3900, -900, 4000, {70, 120, 120}),
    wall:new(-900, 4000, -800, 4000, {70, 120, 120}),
    wall:new(-800, 4000, -700, 4000, {70, 120, 120}),
    wall:new(-700, 4000, -600, 4000, {70, 120, 120}),
    wall:new(-600, 4000, -600, 3900, {70, 120, 120}),
    wall:new(-600, 3900, -600, 3800, {70, 120, 120}),
    wall:new(-600, 3800, -600, 3700, {70, 120, 120}),
    wall:new(-600, 3700, -700, 3700, {70, 120, 120}),
    wall:new(-700, 3700, -800, 3700, {70, 120, 120}),
    wall:new(-800, 3700, -800, 3800, {70, 120, 120}),
    wall:new(-800, 3800, -800, 3900, {70, 120, 120}),
    wall:new(-800, 3900, -700, 3900, {70, 120, 120}),
    wall:new(-700, 3900, -700, 3800, {70, 120, 120}),
    wall:new(-700, 3500, -600, 3500, {70, 120, 120}),
    wall:new(-600, 3500, -500, 3500, {70, 120, 120}),
    wall:new(-500, 3300, -600, 3300, {70, 120, 120}),
    wall:new(-600, 3300, -600, 3400, {70, 120, 120}),
    

}

function walls:draw()
    for i = 1, #self.list do
        self.list[i]:draw()
    end
end



portal = class:new()
portal.x1 = 0
portal.y1 = 0
portal.x2 = 0
portal.y2 = 0
portal.maxradius = 30
portal.radius1 = 15
portal.radius2 = 0
portal.radius3 = 15
portal.radius4 = 0
portal.freq = 30
portal.born = 0
portal.dead = false
portal.delay = 3
portal.room = 'r1'
portal.event_id = false
portal.sh = 1

function portal:draw(now)
    local a = now - self.born
    local ah = 1
    if a < self.delay then
        ah = (a/self.delay)
    end

    --ENTRADA
    love.graphics.setColor(210 + 45*((self.maxradius - self.radius1)/self.maxradius), 80, 255, (255*self.sh - 255*((self.maxradius - self.radius1)/self.maxradius))*ah*self.sh)
    love.graphics.setLineWidth(4 + 10*((self.maxradius - self.radius1)/self.maxradius))
    love.graphics.rectangle('line', self.x1 - (self.maxradius - self.radius1), self.y1 - (self.maxradius - self.radius1), 
        (self.maxradius - self.radius1)*2, (self.maxradius - self.radius1)*2)

    love.graphics.setColor(210 + 45*((self.maxradius - self.radius2)/self.maxradius), 80, 255, (255*self.sh - 255*((self.maxradius - self.radius2)/self.maxradius))*ah*self.sh)
    love.graphics.setLineWidth(4 + 10*((self.maxradius - self.radius2)/self.maxradius))
    love.graphics.rectangle('line', self.x1 - (self.maxradius - self.radius2), self.y1 - (self.maxradius - self.radius2), 
        (self.maxradius - self.radius2)*2, (self.maxradius - self.radius2)*2)

    --SAIDA
    love.graphics.setColor(100 + 55*(self.radius3/self.maxradius), 50, 180, (255*self.sh - 255*(self.radius3/self.maxradius))*ah*self.sh)
    love.graphics.setLineWidth(4 + 10*(self.radius3/self.maxradius))
    love.graphics.rectangle('line', self.x2 - self.radius3, self.y2 - self.radius3, 
        self.radius3*2, self.radius3*2)

    love.graphics.setColor(100 + 55*(self.radius4/self.maxradius), 50, 180, (255*self.sh - 255*(self.radius4/self.maxradius))*ah*self.sh)
    love.graphics.setLineWidth(4 + 10*(self.radius4/self.maxradius))
    love.graphics.rectangle('line', self.x2 - self.radius4, self.y2 - self.radius4, 
        self.radius4*2, self.radius4*2)

    --line
    love.graphics.setLineWidth(1)
    love.graphics.setColor(210 + 45*((self.maxradius - self.radius2)/self.maxradius), 80, 255, (255*self.sh - 255*((self.maxradius - self.radius2)/self.maxradius))*ah*self.sh*0.2)
    love.graphics.circle('line', self.x1, self.y1, 2, 20)
    love.graphics.line(self.x1, self.y1, self.x2, self.y2)

    love.graphics.setLineWidth(3)
    love.graphics.setColor(100 + 55*(self.radius4/self.maxradius), 50, 180, (255*self.sh - 255*(self.radius4/self.maxradius))*ah*self.sh*0.2)
    love.graphics.line(self.x1, self.y1, self.x2, self.y2)
    love.graphics.circle('line', self.x2, self.y2, 2, 20)
end

function portal:update(dt)
    if self.room ~= player.room then
        if self.sh > 0 then
            self.sh = self.sh - dt
            if self.sh < 0 then
                self.sh = 0
            end
        end
        return
    else
        self.sh = 1
    end
    if self.radius1 < self.maxradius then
        self.radius1 = self.radius1 + dt*self.freq*1.6
    else
        if not self.dead then
            self.radius1 = 0
        end
    end

    if self.radius2 < self.maxradius then
        self.radius2 = self.radius2 + dt*self.freq*1.6
    else
        if not self.dead then
            self.radius2 = 0
        end
    end

    if self.radius3 < self.maxradius then
        self.radius3 = self.radius3 + dt*self.freq*0.9
    else
        if not self.dead then
            self.radius3 = 0
        end
    end
    
    if self.radius4 < self.maxradius then
        self.radius4 = self.radius4 + dt*self.freq*0.9
    else
        if not self.dead then
            self.radius4 = 0
        end
    end
    
    if distance(self.x1, self.y1, player:getX(), player:getY()) < player:getRadius() then
        player.body:setPosition(self.x2, self.y2)
        lightEffect(self.x1, self.y1, 'custom', {10, 40, 0.5, {200, 0, 240}, 25, 120, 'alpha'})
        lightEffect(self.x1, self.y1, 'custom', {10, 30, 0.4, {200, 0, 240}, 25, 120, 'alpha'})
        lightEffect(self.x2, self.y2, 'custom', {10, 90, 0.7, {200, 0, 240}, 25, 180, 'alpha'})
        lightEffect(self.x2, self.y2, 'custom', {10, 80, 0.8, {200, 0, 240}, 25, 180, 'alpha'})
        if self.event_id and event_controller[self.event_id] then
            event_controller[self.event_id]:effect()
        end
    end
end


portal_controller = {}
portal_controller.list = {
    portal:new({x1 = 550, y1 = 50, x2 = 650, y2 = 50, born = 1, room = 'r1', event_id = 'r2'}),
}

function portal_controller:draw()
    local now = main_clock:getTime()
    for i = 1, #self.list do
        if now > self.list[i].born then
            self.list[i]:draw(now)
        end
    end

end

function portal_controller:update(dt)
    local now = main_clock:getTime()
    for i = 1, #self.list do
        if now > self.list[i].born then
            self.list[i]:update(dt)
        end
    end
end

function portal_controller:add_portal(prt)
    table.insert(self.list, portal:new(prt))
end

circle_wall = {}
circle_wall.body = nil
circle_wall.shape = nil
circle_wall.fixture = nil
circle_wall.color = ''
circle_wall.x = 0
circle_wall.y = 0
circle_wall.radius = 0
circle_wall.cells = 2
circle_wall.keys = nil
circle_wall.locked = true
function circle_wall:new(x, y, radius, cells, keys)
    local o = {}
    local amnt = 18
    local unit = (math.pi*2)/amnt
    o.body = {}
    o.shape = {}
    o.fixture = {}
    for i = 1, amnt do
        local ang = i*unit

        local xi = x + radius*math.cos(ang)
        local yi = y + radius*math.sin(ang)
        local r_sm = distance(xi, yi, x + radius*math.cos((i+1)*unit), y + radius*math.sin((i+1)*unit))/2
        local xl = r_sm*math.cos(ang + math.pi/2 + math.pi)
        local yl = r_sm*math.sin(ang + math.pi/2 + math.pi)
        local xr = r_sm*math.cos(ang + math.pi/2)
        local yr = r_sm*math.sin(ang + math.pi/2)
        table.insert(o.body, love.physics.newBody(world, xi, yi, 'static'))
        table.insert(o.shape, love.physics.newEdgeShape(xl, yl, xr, yr))
        table.insert(o.fixture, love.physics.newFixture(o.body[i], o.shape[i]))
    end
    o.x = x
    o.y = y
    o.radius = radius
    o.cells = cells
    o.keys = keys
    setmetatable(o, self)
    self.__index = self
    return o
end

function circle_wall:draw(now)
    if not self:isOnCamera() then
        return
    end
    if self.locked then
        love.graphics.setColor(200, 50, 50, 255)
    else
        love.graphics.setColor(50, 200, 200, senoid("sin", 180, 5, 20))
    end
    love.graphics.setLineWidth(5)
    love.graphics.circle('line', self:getX(), self:getY(), self:getRadius())
    local angle = main_clock:getTime()
    love.graphics.setLineWidth(5)
    local unit = (math.pi*2)/self.cells
    for i = 1, self.cells do
        local xc = self:getX() + self:getRadius()*math.cos(angle + i*unit)
        local yc = self:getY() + self:getRadius()*math.sin(angle + i*unit)
        love.graphics.circle('line', xc, yc, 4, 50)
        love.graphics.circle('fill', xc, yc, 4, 50)
    end
    for i = 1, self.cells do
        local xc = self:getX() + self:getRadius()*math.cos(angle + i*unit)
        local yc = self:getY() + self:getRadius()*math.sin(angle + i*unit)
        if not icon_controller.list[self.keys[i]].active then
            love.graphics.setColor(200, 50, 50, 255*0.2)
        else
            love.graphics.setColor(50, 200, 200, senoid("sin", 180, 5, 20)*0.2)
        end
        love.graphics.setLineWidth(1)
        love.graphics.line(xc, yc, icon_controller.list[self.keys[i]].x, icon_controller.list[self.keys[i]].y)
    end
end

function circle_wall:update(dt)
    if self.locked then
        local sum = 0
        for i = 1, #self.keys do
            if icon_controller.list[self.keys[i]].active then
                sum = sum + 1
            end
        end
        if sum == #self.keys then
            self:open()
        else
            self:close()
        end
    end
end

function circle_wall:isOnCamera(which)
    local rad = distance(0, 0, width/2, height/2)
    return distance(self.x, self.y, player:getX(), player:getY()) < rad + self.radius
end

function circle_wall:getX()
    return self.x
end

function circle_wall:getY()
    return self.y
end

function circle_wall:getRadius()
    return self.radius
end

function circle_wall:open()
    if self.locked then
        for i = 1, #self.body do
            self.body[i]:destroy()
        end
        self.body = nil
        self.shape = nil
        self.fixture = nil
        lightEffect(self.x, self.y, 'custom', {self.radius, self.radius*1.2, 1.5, {50, 200, 200}, 7, 120})
    end
    self.locked = false
end
function circle_wall:close()
    if not self.locked then
        local amnt = 18
        local unit = (math.pi*2)/amnt
        self.body = {}
        self.shape = {}
        self.fixture = {}
        for i = 1, amnt do
            local ang = i*unit

            local xi = self.x + self.radius*math.cos(ang)
            local yi = self.y + self.radius*math.sin(ang)
            local r_sm = distance(xi, yi, self.x + self.radius*math.cos((i+1)*unit), self.y + self.radius*math.sin((i+1)*unit))/2
            local xl = r_sm*math.cos(ang + math.pi/2 + math.pi)
            local yl = r_sm*math.sin(ang + math.pi/2 + math.pi)
            local xr = r_sm*math.cos(ang + math.pi/2)
            local yr = r_sm*math.sin(ang + math.pi/2)
            table.insert(self.body, love.physics.newBody(world, xi, yi, 'static'))
            table.insert(self.shape, love.physics.newEdgeShape(xl, yl, xr, yr))
            table.insert(self.fixture, love.physics.newFixture(self.body[i], self.shape[i]))
        end
    end
    self.locked = true
end

cwall_controller = {}
cwall_controller.list = {
    circle_wall:new(1050, -450, 40, 2, {1, 2}),
    circle_wall:new(1850, -250, 40, 2, {3, 4}),
    circle_wall:new(450, -1050, 40, 3, {5, 6, 7}),

    --room 50
    circle_wall:new(4550, 1250, 480, 4, {9}),
    circle_wall:new(4550, 1250, 400, 5, {10}),
    circle_wall:new(4550, 1250, 320, 6, {11}),

    --room 10
    circle_wall:new(1850, -1050, 40, 1, {8}),

    --room 3
    circle_wall:new(1050, 550, 40, 1, {21}),

    --room 16
    circle_wall:new(-450, 2550, 40, 1, {12}),
    circle_wall:new(-450, 3550, 40, 3, {13, 14, 15}),
    circle_wall:new(-450, 4050, 40, 5, {16, 17, 18, 19, 20}),
    
    --room 15
    circle_wall:new(1650, 1450, 40, 2, {22, 23}),
}

function cwall_controller:draw()
    for i = 1, #self.list do
        self.list[i]:draw()
    end
end

function cwall_controller:update(dt)
    for i = 1, #self.list do
        self.list[i]:update(dt)
    end
end

function cwall_controller:add(cwall)
    table.insert(self.list, cwall)
end

icon = class:new()
icon.x = 0
icon.y = 0
icon.radius = 20
icon.active = false
icon.cwall_id = 0
icon.cells = 2

function icon:draw()
    if not self.active then
        love.graphics.setColor(200, 50, 50)
    else
        love.graphics.setColor(50, 200, 200)
    end
    love.graphics.setLineWidth(2)
    love.graphics.rectangle('line', self.x - self.radius, self.y - self.radius,
        self.radius*2, self.radius*2, 4)
    love.graphics.rectangle('fill', self.x - self.radius, self.y - self.radius,
        self.radius*2, self.radius*2, 4)
    love.graphics.setColor(255, 255, 255)
    love.graphics.setLineWidth(2.5)
    local f_rad = self.radius*0.67
    love.graphics.circle('line', self.x, self.y, f_rad, 50)
    local angle = main_clock:getTime()
    love.graphics.setLineWidth(5)
    local unit = (math.pi*2)/self.cells
    for i = 1, self.cells do
        love.graphics.circle('line', self.x + f_rad*math.cos(angle + i*unit),
            self.y + f_rad*math.sin(angle + i*unit), 2, 50)
        love.graphics.circle('fill', self.x + f_rad*math.cos(angle + i*unit),
            self.y + f_rad*math.sin(angle + i*unit), 2, 50)
    end
end

function icon:update(dt)
    if not self.active and distance(self.x, self.y, player:getX(), player:getY()) < self.radius + player:getRadius() then
        self.active = true
        lightEffect(self.x, self.y, 'custom', {self.radius, self.radius*4, 1, {50, 200, 200}, 15, 120, 'alpha'})
    end
end

function icon:isOnCamera(which)
    return distance(self.x, self.y, player:getX(), player:getY()) < width*0.5 - self.radius
end

icon_controller = {}
icon_controller.list = {
    icon:new({x = 250, y = -850}),
    icon:new({x = -150, y = -450}),
    icon:new({x = 1250, y = -1350}),
    icon:new({x = 450, y = -1050}),
    icon:new({x = 2450, y = -750, cells = 3}), --5
    icon:new({x = 3450, y = -3050, cells = 3}), --6
    icon:new({x = 1750, y = -1950, cells = 3}), --7
    icon:new({x = 2450, y = -1250, cells = 1}),
    icon:new({x = 3950, y = 750, cells = 4}), --9
    icon:new({x = 3950, y = 1750, cells = 5}), --10
    icon:new({x = 5150, y = 1250, cells = 6}), --11
    icon:new({x = 450, y = 2950, cells = 1}),
    icon:new({x = 450, y = 4050, cells = 3}), --13
    icon:new({x = -650, y = 2450, cells = 3}), --14
    icon:new({x = -350, y = 3350, cells = 3}), --15
    icon:new({x = -550, y = 3350, cells = 5}),
    icon:new({x = -150, y = 3350, cells = 5}), --17
    icon:new({x = -750, y = 3850, cells = 5}), --18
    icon:new({x = 50, y = 4050, cells = 5}), --19
    icon:new({x = 350, y = 3950, cells = 5}),
    icon:new({x = 1650, y = 1450, cells = 1}),--21
    icon:new({x = -120, y = 1320, cells = 2}),--22
    icon:new({x = -450, y = 4250, cells = 2}), --23
}

function icon_controller:draw()
    for i = 1, #self.list do
        self.list[i]:draw()
    end

end

function icon_controller:update(dt)
    for i = 1, #self.list do
        self.list[i]:update(dt)
    end
end

laser = class:new()
laser.x1 = 0
laser.y1 = 0
laser.x2 = 0
laser.y2 = 0
laser.active = false
laser.frequence = 1
laser.last_switch = 0
laser.start = 0
laser.room = 'r1'

function laser:draw()
    if not self:isOnCamera() then
        return
    end
    local angle = math.atan2(self.y2 - self.y1, self.x2 - self.x1)
    love.graphics.setColor(255, 0, 255)
    love.graphics.setLineWidth(1)
    local load = main_clock:getTime() - self.last_switch
    if self.active then
        love.graphics.line(self.x1 + 10*math.cos(angle), self.y1 + 10*math.sin(angle),
            self.x2 + 10*math.cos(angle + math.pi), self.y2 + 10*math.sin(angle + math.pi))
        love.graphics.setColor(255, 0, 255, 255 - 255*(load/self.frequence))
        love.graphics.circle('line', self.x1, self.y1, 11, 50)
        love.graphics.circle('fill', self.x1, self.y1, 11, 50)


        love.graphics.circle('line', self.x2, self.y2, 11, 50)
        love.graphics.circle('fill', self.x2, self.y2, 11, 50)

        love.graphics.setLineWidth(15*(load/self.frequence))
        love.graphics.line(self.x1 + 10*math.cos(angle), self.y1 + 10*math.sin(angle),
            self.x2 + 10*math.cos(angle + math.pi), self.y2 + 10*math.sin(angle + math.pi))


    else
        love.graphics.setLineWidth(1)
        love.graphics.circle('line', self.x1, self.y1, 11*(load/self.frequence), 50)
        love.graphics.circle('fill', self.x1, self.y1, 11*(load/self.frequence), 50)

        love.graphics.circle('line', self.x2, self.y2, 11*(load/self.frequence), 50)
        love.graphics.circle('fill', self.x2, self.y2, 11*(load/self.frequence), 50)
    end

    love.graphics.setColor(150, 30, 150)
    love.graphics.setLineWidth(3.5)

    love.graphics.circle('line', self.x1, self.y1, 12, 50)
    love.graphics.circle('line', self.x1 + 12*math.cos(angle), self.y1 + 12*math.sin(angle), 3, 30)
    love.graphics.circle('fill', self.x1 + 12*math.cos(angle), self.y1 + 12*math.sin(angle), 3, 30)

    love.graphics.circle('line', self.x2, self.y2, 12, 50)
    love.graphics.circle('line', self.x2 + 12*math.cos(angle + math.pi), self.y2 + 12*math.sin(angle + math.pi), 3, 30)
    love.graphics.circle('fill', self.x2 + 12*math.cos(angle + math.pi), self.y2 + 12*math.sin(angle + math.pi), 3, 30)

end

function laser:update(dt, time)
    if self.start > time then
        self.last_switch = time
        return
    end

    if time - self.last_switch > self.frequence then
        self:switch(time)
        self.last_switch = time
    end
    if self.active then
        
    end
    self:checkCatch()
end

function laser:isOnCamera()
    return distance(self.x1, self.y1, player:getX(), player:getY()) < width*0.55 or 
        distance(self.x2, self.y2, player:getX(), player:getY()) < width*0.55
end

function laser:switch(time)
    if self.active then
        self.active = false
    else
        lightEffect(self.x1, self.y1, 'custom', {3, 30, self.frequence*0.5, {255, 50 ,225}, 8, 255, 'alpha'})
        lightEffect(self.x2, self.y2, 'custom', {3, 30, self.frequence*0.5, {255, 50 ,225}, 8, 255, 'alpha'})

        self.active = true
    end
end

function laser:getPoint(p)
    return self.x1*p + self.x2*(1-p), self.y1*p + self.y2*(1-p)
end

function laser:checkCatch()
    local x, y = player:getX(), player:getY()
    local ang1 = math.atan2(self.y1 - self.y2, self.x1 - self.x2)
    local ang2 = math.atan2(self.y1 - y, self.x1 - x)
    local angle = math.abs(ang1 - ang2)

    local dist = distance(x, y, self.x1, self.y1)
    local dist2 = distance(self.x1, self.y1, self.x2, self.y2)
    local adj = math.cos(angle)*dist
    local p = 1 - adj/dist2
    if p > 1 or p < 0 then
        return
    end
    local px, py = self:getPoint(p)
    if player:checkPoint(px, py) then
        if self.active then
            return player:hurt()
        end
    end
end

laser_controller = {}
laser_controller.list = {
    --room 6
    laser:new({room = 'r6', x1 = -50, y1 = -575, x2 = -50, y2 = -325, start = 6.5}),
    --room 7
    laser:new({room = 'r7', x1 = 1395, y1 = -480, x2 = 1505, y2 = -480, frequence = 0.5, start = 15}),
    laser:new({room = 'r7', x1 = 1295, y1 = -480, x2 = 1605, y2 = -480, frequence = 0.5, start = 15.5}),
    --room 8
    laser:new({room = 'r8', x1 = 1020, y1 = -820, x2 = 1480, y2 = -820, start = 21.8}),
    laser:new({room = 'r8', x1 = 1020, y1 = -855, x2 = 1480, y2 = -855, start = 21.9}),
    laser:new({room = 'r8', x1 = 1020, y1 = -890, x2 = 1480, y2 = -890, start = 22}),
    laser:new({room = 'r8', x1 = 1020, y1 = -925, x2 = 1235, y2 = -970, start = 21.9}),
    laser:new({room = 'r8', x1 = 1020, y1 = -960, x2 = 1235, y2 = -1005, start = 22, frequence = 0.75}),
    laser:new({room = 'r8', x1 = 1265, y1 = -970, x2 = 1480, y2 = -925, start = 22}),
    laser:new({room = 'r8', x1 = 1265, y1 = -1005, x2 = 1480, y2 = -960, start = 22.1, frequence = 0.75}),
    laser:new({room = 'r8', x1 = 1100, y1 = -1025, x2 = 1400, y2 = -1025, start = 21, frequence = 0.6}),
    --room 10:
    laser:new({room = 'r10', x1 = 2280, y1 = -1810, x2 = 2420, y2 = -1810, frequence = 0.5, start = 45}),
    laser:new({room = 'r10', x1 = 2270, y1 = -1810, x2 = 2430, y2 = -1810, frequence = 0.5, start = 45.5}),
    laser:new({room = 'r10', x1 = 2420, y1 = -880, x2 = 2480, y2 = -820, frequence = 1, start = 27}),
    laser:new({room = 'r10', x1 = 2480, y1 = -880, x2 = 2420, y2 = -820, frequence = 1.5, start = 27}),

    laser:new({room = 'r10', x1 = 2100, y1 = -1400, x2 = 2100, y2 = -1500, start = 27, frequence = 1.2}),
    laser:new({room = 'r10', x1 = 2100, y1 = -1400, x2 = 2000, y2 = -1500, start = 27.4, frequence = 1.2}),
    laser:new({room = 'r10', x1 = 2100, y1 = -1400, x2 = 2000, y2 = -1400, start = 27.8, frequence = 1.2}),
    laser:new({room = 'r10', x1 = 2100, y1 = -1400, x2 = 2000, y2 = -1300, start = 28.2, frequence = 1.2}),
    laser:new({room = 'r10', x1 = 2100, y1 = -1400, x2 = 2100, y2 = -1300, start = 28.6, frequence = 1.2}),
    laser:new({room = 'r10', x1 = 2100, y1 = -1400, x2 = 2200, y2 = -1300, start = 29, frequence = 1.2}),

    laser:new({room = 'r10', x1 = 2200, y1 = -1500, x2 = 2300, y2 = -1500, frequence = 1, start = 27}),
    laser:new({room = 'r10', x1 = 1700, y1 = -1800, x2 = 1900, y2 = -2000, start = 27, frequence = 0.4}),
    laser:new({room = 'r10', x1 = 1700, y1 = -1800, x2 = 1900, y2 = -2000, start = 27.4, frequence = 0.4}),
    laser:new({room = 'r10', x1 = 1700, y1 = -1800, x2 = 1800, y2 = -1700, frequence = 0.8, start = 27}),
    laser:new({room = 'r10', x1 = 1700, y1 = -1900, x2 = 1900, y2 = -1700, start = 27.4, frequence = 0.8}),
    laser:new({room = 'r10', x1 = 1900, y1 = -2000, x2 = 1900, y2 = -1700, start = 27.9, frequence = 0.8}),
    laser:new({room = 'r10', x1 = 1900, y1 = -1800, x2 = 2100, y2 = -1800, start = 28, frequence = 0.8}),
    
    --room 14
    laser:new({room = 'r14', x1 = 50, y1 = 1150, x2 = -200, y2 = 1100, start = 6.75, frequence = 1}),
    laser:new({room = 'r14', x1 = 50, y1 = 1150, x2 = -200, y2 = 1000, start = 6.5, frequence = 1}),
    laser:new({room = 'r14', x1 = 50, y1 = 1150, x2 = -100, y2 = 900, start = 6.25, frequence = 1}),
    laser:new({room = 'r14', x1 = 50, y1 = 1150, x2 = 0, y2 = 900, start = 6, frequence = 1}),
    laser:new({room = 'r14', x1 = 50, y1 = 1150, x2 = 100, y2 = 900, start = 5.75, frequence = 1}),
    laser:new({room = 'r14', x1 = 50, y1 = 1150, x2 = 200, y2 = 900, start = 5.5, frequence = 1}),
    laser:new({room = 'r14', x1 = 50, y1 = 1150, x2 = 300, y2 = 1000, start = 5.25, frequence = 1}),
    laser:new({room = 'r14', x1 = 50, y1 = 1150, x2 = 300, y2 = 1100, start = 5, frequence = 1}),

    laser:new({room = 'r14', x1 = 50, y1 = 1150, x2 = 300, y2 = 1200, start = 6.75, frequence = 1}),
    laser:new({room = 'r14', x1 = 50, y1 = 1150, x2 = 300, y2 = 1300, start = 6.5, frequence = 1}),
    laser:new({room = 'r14', x1 = 50, y1 = 1150, x2 = 200, y2 = 1400, start = 6.25, frequence = 1}),
    laser:new({room = 'r14', x1 = 50, y1 = 1150, x2 = 100, y2 = 1400, start = 6, frequence = 1}),
    laser:new({room = 'r14', x1 = 50, y1 = 1150, x2 = 0, y2 = 1400, start = 5.75, frequence = 1}),
    laser:new({room = 'r14', x1 = 50, y1 = 1150, x2 = -100, y2 = 1400, start = 5.5, frequence = 1}),
    laser:new({room = 'r14', x1 = 50, y1 = 1150, x2 = -200, y2 = 1300, start = 5.25, frequence = 1}),
    laser:new({room = 'r14', x1 = 50, y1 = 1150, x2 = -200, y2 = 1200, start = 5, frequence = 1}),

    --room 16:
    laser:new({room = 'r16', x1 = -590, y1 = 2700, x2 = -510, y2 = 2700, start = 20, frequence = 2.5}),
    laser:new({room = 'r16', x1 = -510, y1 = 2490, x2 = -590, y2 = 2410, start = 22.5, frequence = 2.5}),
    laser:new({room = 'r16', x1 = -390, y1 = 2490, x2 = -310, y2 = 2410, start = 25, frequence = 2.5}),
    laser:new({room = 'r16', x1 = -390, y1 = 2610, x2 = -310, y2 = 2690, start = 27.5, frequence = 2.5}),
    laser:new({room = 'r16', x1 = -490, y1 = 2600, x2 = -410, y2 = 2600, start = 30, frequence = 5}),
    laser:new({room = 'r16', x1 = -1000, y1 = 3800, x2 = -900, y2 = 3800, start = 20, frequence = 1.6}),
    laser:new({room = 'r16', x1 = -700, y1 = 4000, x2 = -700, y2 = 4100, start = 20, frequence = 1.6}),
    laser:new({room = 'r16', x1 = -600, y1 = 3800, x2 = -500, y2 = 3800, start = 20, frequence = 1.2}),
    laser:new({room = 'r16', x1 = -700, y1 = 3700, x2 = -700, y2 = 3600, start = 20, frequence = 1.2}),
    laser:new({room = 'r16', x1 = -900, y1 = 3800, x2 = -800, y2 = 3800, start = 20, frequence = 1}),
    laser:new({room = 'r16', x1 = -700, y1 = 3900, x2 = -700, y2 = 4000, start = 20, frequence = 1}),
    laser:new({room = 'r16', x1 = -700, y1 = 3800, x2 = -600, y2 = 3800, start = 20, frequence = 0.8}),
    laser:new({room = 'r16', x1 = -700, y1 = 3800, x2 = -700, y2 = 3700, start = 20, frequence = 0.8}),
    laser:new({room = 'r16', x1 = -700, y1 = 3800, x2 = -800, y2 = 3800, start = 20, frequence = 0.75}),
    laser:new({room = 'r16', x1 = -700, y1 = 3400, x2 = 0, y2 = 3400, start = 20, frequence = 0.75}),
    laser:new({room = 'r16', x1 = -200, y1 = 3600, x2 = -200, y2 = 3700, start = 20, frequence = 1}),
    laser:new({room = 'r16', x1 = -150, y1 = 3600, x2 = -150, y2 = 3700, start = 20, frequence = 2}),
    laser:new({room = 'r16', x1 = -100, y1 = 3600, x2 = -100, y2 = 3700, start = 20, frequence = 1.5}),

}

function laser_controller:draw()
    for i = 1, #self.list do
        self.list[i]:draw()
    end
end

function laser_controller:update(dt)
    local time = main_clock:getTime()
    for i = 1, #self.list do
        self.list[i]:update(dt, time)
    end
end

ball_ammo = class:new()
ball_ammo.x = 0
ball_ammo.y = 0
ball_ammo.radius = 20
ball_ammo.active = false
ball_ammo.a = 1
ball_ammo.amount = 1

function ball_ammo:draw()
    love.graphics.setColor(255, 255, 50, 255*self.a)
    love.graphics.setLineWidth(2)
    love.graphics.rectangle('line', self.x - self.radius, self.y - self.radius,
        self.radius*2, self.radius*2, 4)
    love.graphics.rectangle('fill', self.x - self.radius, self.y - self.radius,
        self.radius*2, self.radius*2, 4)
    love.graphics.setColor(255, 255, 255, 255*self.a)
    love.graphics.setLineWidth(self.radius/8)
    local f_rad = self.radius*0.67
    love.graphics.circle('line', self.x, self.y, f_rad, 50)
end

function ball_ammo:update(dt)
    if not self.active and distance(self.x, self.y, player:getX(), player:getY()) < self.radius + player:getRadius() then
        self.active = true
        player:farmUp(self.amount)
        for i = 1, self.amount do
            lightEffect(self.x, self.y, 'custom', {self.radius, self.radius*4, i*0.3, {200, 200, 50}, 5, 120, 'alpha'})
        end
    end
    if self.active then
        self.a = self.a - dt
        if self.a < 0 then
            self.a = 0
            self.destroy = true
        end
    end
end

ball_ammo_controller = {}
ball_ammo_controller.list = {
    ball_ammo:new({x = 1250, y = -150})
}
ball_ammo_controller.tutorial = true
function ball_ammo_controller:draw()
    for i = 1, #self.list do
        self.list[i]:draw()
    end
end

function ball_ammo_controller:update(dt)
    for i = 1, #self.list do
        self.list[i]:update(dt)
    end
    for i = 1, #self.list do
        if self.list[i].destroy then
            table.remove(self.list, i)
            break
        end
    end
    local i = 1
    while i < #self.list do
        if self.list[i].destroy then
            table.remove(self.list, i)
        else
            i = i + 1
        end
    end
    if self.tutorial then
        if player.balls == 0 and player.teleport_count == 0 and #self.list == 0 then
            table.insert(self.list, ball_ammo:new({x = 1250, y = -150}))
        end
    end
end

function ball_ammo_controller:add(cx, cy, qtd)
    table.insert(self.list, ball_ammo:new({x = cx, y = cy, amount = qtd}))
end

function ball_ammo_controller:exists(cx, cy)
    for i = 1, #self.list do
        if self.list[i].x == cx and self.list[i].y == cy then
            return true
        end
    end
    return false
end

