player = {}
player.body = nil
player.shape = nil
player.fixture = nil
player.speed = 250
player.part1 = true
player.part2 = true
player.angle0 = 0
player.angle = 0
player.eyeturnspeed = 9
player.farm = 0
player.damage = false
player.damageok = false
player.damage_delay = 0
player.ball = nil
player.teleport_delay = 0.2
player.teleport_count = 0
player.balls = 0
player.maxballs = 6
player.room = 'r1'
player.red = 200


function player:start()
    self.body = love.physics.newBody(world, -50, 50, 'dynamic')
    --self.room = 'r10'
    self.shape = love.physics.newCircleShape(25)
    self.fixture = love.physics.newFixture(self.body, self.shape)
    self.ball = {}
    self.ball.body = nil
    self.ball.shape = nil
    self.ball.fixture = nil
end

function player:getX()
    return self.body:getX()
end
function player:getY()
    return self.body:getY()
end
function player:getRadius()
    return self.shape:getRadius()
end

function player:draw()

    love.graphics.setLineWidth(1)
    --love.graphics.print(self.room, self:getX(), self:getY() + self:getRadius()*1.25, 0, 0.2, 0.2)
    if self.part1 then
        love.graphics.setColor(self.red, 225, 230, 200)
        --love.graphics.setColor(255, 255, 0, 200)
        love.graphics.circle('fill', self:getX(), self:getY(), self:getRadius() - senoid('sin', self:getRadius()/15, 0.6, 0), 100)
        love.graphics.setColor(0, 0, 0, 200)
        love.graphics.circle('line', self:getX(), self:getY(), self:getRadius() - senoid('sin', self:getRadius()/15, 0.6, 0), 100)
    end
    if self.part2 then
        love.graphics.setColor(220, 60, 180, 40)
        love.graphics.circle('fill', self:getX() + math.cos(self.angle)*self:getRadius()/7.5 - math.cos(self.angle)*senoid('cos', 1, 0.6, 0), self:getY() + math.sin(self.angle)*self:getRadius()/7.5 - math.sin(self.angle)*senoid('cos', 1, 0.6, 0), self:getRadius()/1.35, 100)
        love.graphics.setColor(0, 0, 0, 60)
        love.graphics.circle('line', self:getX() + math.cos(self.angle)*self:getRadius()/7.5 - math.cos(self.angle)*senoid('cos', 1, 0.6, 0), self:getY() + math.sin(self.angle)*self:getRadius()/7.5 - math.sin(self.angle)*senoid('cos', 1, 0.6, 0), self:getRadius()/1.35, 100)

        love.graphics.setColor(220, 5, 120)
        love.graphics.circle('fill', self:getX() + math.cos(self.angle)*self:getRadius()/2.5 - math.cos(self.angle)*senoid('cos', 3, 0.6, 0), self:getY() + math.sin(self.angle)*self:getRadius()/2.5 - math.sin(self.angle)*senoid('cos', 3, 0.6, 0), self:getRadius()/3, 100)
        love.graphics.setColor(0, 0, 0, 180)
        love.graphics.circle('line', self:getX() + math.cos(self.angle)*self:getRadius()/2.5 - math.cos(self.angle)*senoid('cos', 3, 0.6, 0), self:getY() + math.sin(self.angle)*self:getRadius()/2.5 - math.sin(self.angle)*senoid('cos', 3, 0.6, 0), self:getRadius()/3, 100)

        love.graphics.setColor(120, 5, 20)
        love.graphics.circle('fill', self:getX() + math.cos(self.angle)*self:getRadius()/2 - math.cos(self.angle)*senoid('cos', 3.7, 0.6, 0), self:getY() + math.sin(self.angle)*self:getRadius()/2 - math.sin(self.angle)*senoid('cos', 3.7, 0.6, 0), self:getRadius()/10, 100)
        love.graphics.setColor(0, 0, 0, 120)
        love.graphics.circle('line', self:getX() + math.cos(self.angle)*self:getRadius()/2 - math.cos(self.angle)*senoid('cos', 3.7, 0.6, 0), self:getY() + math.sin(self.angle)*self:getRadius()/2 - math.sin(self.angle)*senoid('cos', 3.7, 0.6, 0), self:getRadius()/10, 100)
    end
    if self.ball.body then
        love.graphics.setLineWidth(100*self.teleport_count)
        love.graphics.setColor(255, 255, 0,200*(self.teleport_count/self.teleport_delay))
        love.graphics.circle('line', self.ball.body:getX(), self.ball.body:getY(), self.ball.shape:getRadius(), 100)

        love.graphics.setLineWidth(1)
        love.graphics.setColor(255, 255, 120, 255 - 255*(self.teleport_count/self.teleport_delay))
        love.graphics.circle('line', self.ball.body:getX(), self.ball.body:getY(), self.ball.shape:getRadius(), 100)
    end    

    if self.damage_delay > 0 then
        love.graphics.setBlendMode('add')
        love.graphics.setColor(255, 0, 0, 255*self.damage_delay)
        love.graphics.rectangle('fill', self:getX() - width, self:getY() - self:getRadius(),
            width*2, self:getRadius()*2)
        love.graphics.rectangle('fill', self:getX() - self:getRadius(), self:getY() - height,
            self:getRadius()*2, height*2)
        love.graphics.circle('line', self:getX(), self:getY(), self:getRadius()*1.4, 200)
        love.graphics.circle('fill', self:getX(), self:getY(), self:getRadius()*1.4)
        love.graphics.setBlendMode('alpha')

    end
    
end

function player:draw2()
    --Hud
    local icon_radius = 7
    local bx, by = 20, 20
    
    love.graphics.setLineWidth(2)
    local f_rad = icon_radius*0.67
    for i = 1, self.maxballs do
        if i > self.balls then
            love.graphics.setColor(180, 180, 180, 120)
        else
            love.graphics.setColor(255, 255, 50, 120)
        end
        love.graphics.rectangle('line', bx - icon_radius + 2.3*icon_radius*(i - 1), by - icon_radius,
            icon_radius*2, icon_radius*2, 4)
        love.graphics.rectangle('fill', bx - icon_radius  + 2.3*icon_radius*(i - 1), by - icon_radius,
            icon_radius*2, icon_radius*2, 4)
        love.graphics.setColor(255, 255, 255, 160)
        love.graphics.setLineWidth(icon_radius/8)
        love.graphics.circle('line', bx + 2.3*icon_radius*(i - 1), by, f_rad, 50)
    end
end

function player:update(dt)
    if self.damage_delay > 0 then
        self.damage_delay = self.damage_delay - dt
    end
    local ang = math.atan2(vertical, horizontal)
    self.body:setLinearVelocity(math.abs(horizontal)*self.speed*math.cos(ang), math.abs(vertical)*self.speed*math.sin(ang))
    if horizontal ~= 0 or vertical ~= 0 then 
        if self.angle0 < ang then
            while ang - self.angle0 > math.pi do
                ang = ang - math.pi*2
            end
        end
        if self.angle0 > ang then
            while self.angle0 - ang > math.pi do
                ang = ang + math.pi*2
            end
        end
        self.angle0 = ang
    end
    if math.abs(self.angle - self.angle0) > 0.1 then
        self.angle = (self.angle*(self.eyeturnspeed) + self.angle0)/(self.eyeturnspeed + 1)
    end
    if self.damageok then
        self.damage = false
        self.damageok = false
    end
    if self.teleport_count > 0 then
        self.teleport_count = self.teleport_count - dt
        if self.teleport_count < 0 then
            self:teleport()
            self.teleport_count = 0
        end
    end
end

function player:isFull()
    if self.balls == self.maxballs then
        return true
    end
    return false
end

function player:farmUp(amount)
    if self.balls + amount < self.maxballs then
        self.balls = self.balls + amount
    else
        self.balls = self.maxballs
    end
end

function player:checkPoint(x, y)
    if distance(x, y, self:getX(), self:getY()) < self:getRadius() then
        return true
    end
    return false
end

function player:hurt()
    player.body:setPosition(room[self.room][1], room[self.room][2])
    event_controller[self.room]:effect('recall')
    sx, sy = love.math.random()*0.4 - 0.2, love.math.random()*0.6 - 0.3
    self.damage = true
    self.damage_delay = 1
end

function player:launch_ball()
    if not self.ball.body and self.balls > 0 then
        self.ball.body = love.physics.newBody(world, self:getX() + (self:getRadius())*math.cos(self.angle0),
            self:getY() + (self:getRadius())*math.sin(self.angle0), 'dynamic')
        self.ball.shape = love.physics.newCircleShape(20)
        self.ball.fixture = love.physics.newFixture(self.ball.body, self.ball.shape)
        self.ball.body:applyForce(self.speed*180*math.cos(self.angle0), self.speed*180*math.sin(self.angle0))
        self.teleport_count = self.teleport_delay
        self.balls = self.balls - 1
    end
end

function player:teleport()
    local x, y = self.ball.body:getX(), self.ball.body:getY()
     lightEffect(self:getX(), self:getY(), 'custom', {2, self:getRadius()*1.2, 0.8, {190, 225, 230}, 8, 90, 'add', 'behind'} )
    lightEffect(x, y, 'custom', {10, 80, 0.8, {255, 255, 50}, 25, 200, 'alpha'})
    self.body:setPosition(x, y)
    self.ball.body:destroy()
    self.ball.body = nil
    self.ball.shape = nil
    self.ball.fixture = nil
end