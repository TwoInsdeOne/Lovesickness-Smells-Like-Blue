function distance(x1, y1, x2, y2)
    return math.sqrt( (x1-x2)*(x1-x2) + (y1-y2)*(y1-y2) )
end
function distanceObj(obj1, obj2)
    return math.sqrt( (obj1.x-obj2.x)*(obj1.x-obj2.x) + (obj1.y-obj2.y)*(obj1.y-obj2.y) )
end
function nonzero(n)
    return math.max(n, 0)
end


colors = {
    ['white'] = {255, 255, 255},
    ['silver'] = {220, 220, 230},
    ['red'] = {255, 0, 0},
    ['red2'] = {250, 20, 30},
    ['red3'] = {240, 30, 70},
    ['red4'] = {200, 80, 100},
    ['gold'] = {255, 185, 0},
    ['orange'] = {255, 150, 10},
    ['orange2'] = {255, 170, 30},
    ['orange3'] = {255, 90, 10},
    ['orange4'] = {230, 150, 80},
    ['yellow'] = {255, 255, 0},
    ['yellow2'] = {250, 250, 30},
    ['yellow3'] = {210, 210, 150},
    ['green'] = {0, 255, 0},
    ['green2'] = {20, 255, 20},
    ['green3'] = {20, 255, 100},
    ['ciano'] = {10, 255, 255},
    ['ciano-dark'] = {30, 150, 150},
    ['ciano2'] = {20, 170, 255},
    ['ciano-bright'] = {180, 220, 255},
    ['blue'] = {0, 0, 255},
    ['blue2'] = {20, 80, 255},
    ['blue3'] = {50, 30, 255},
    ['blue4'] = {80, 20, 240},
    ['blue-dark'] = {20, 20, 140},
    ['blue-dark2'] = {10, 10, 90},
    ['purple'] = {130, 10, 230},
    ['purple2'] = {160, 0, 220},
    ['pink'] = {255, 0, 255},
    ['pink2'] = {200, 0, 255},
    ['pink3'] = {255, 10, 200},
    ['pink4'] = {255, 30, 150},
    ['pink-red'] = {255, 20, 100},
    ['grey'] = {150, 150, 150},
    ['grey-gold'] = {170, 140, 80},
    ['black'] = {0,0,0},
    ['energy'] = {255, 255, 160}
}

sounds = {}

function senoid(func, amp, freq, offset)
    amp = amp/2
    if func == 'sin' then
        return amp*math.sin(freq*main_clock:getTime()) + offset + amp
    elseif func == 'cos' then
        return amp*math.cos(freq*main_clock:getTime()) + offset + amp
    end
end

function playSound(name, volume)
    volume = volume or 1
    local sh = sounds[name]:clone()
    sh:setVolume(volume)
    sh:play()
end


Light = {}
Light.x = 0
Light.y = 0
Light.init_r = 5
Light.end_r = 10
Light.time = 1
Light.ctime = 0
Light.color = 'red'
Light.width = 2
Light.init_hue = 100
Light.blendmode = 'alpha'
Light.layer = ''

function Light:new(x, y, perfil)
    local o = {}
    o.x = x
    o.y = y
    o.init_r = perfil[1]
    o.end_r = perfil[2]
    o.time = perfil[3]
    o.color = perfil[4]
    o.width = perfil[5]
    o.init_hue = perfil[6]
    o.blendmode = perfil[7]
    o.layer = perfil[8] or 'n'
    setmetatable(o, self)
    self.__index = self
    return o
end
function Light:draw(layer)
    if self:isOnCamera() then
        local d_r = self.end_r - self.init_r
        local unittime = self.ctime/self.time
        love.graphics.setLineWidth(self.width)
        local c = self.color
        if type(self.color) == 'string' then
            c = colors[self.color]
        end
        love.graphics.setColor(c[1], c[2], c[3], self.init_hue*(1 - unittime))
        love.graphics.setBlendMode(self.blendmode)
        love.graphics.circle('line', self.x, self.y, self.init_r + d_r*unittime)
        love.graphics.setBlendMode('alpha')
    end
end
function Light:update(dt)
    self.ctime = self.ctime + dt
end
function Light:isOnCamera()
    return distance(self.x, self.y, player:getX(), player:getY()) < width/2
end
function Light:done()
    if self.ctime >= self.time then
        return true
    end
    return false
end

light_perfis = {
    ['l-white'] = {5, 10, 1, 'white', 2, 120, 'add'},
    ['l-blue'] = {5, 10, 1, 'blue3', 2, 120, 'add'},
    ['l-green'] = {5, 10, 1, 'green3', 2, 120, 'add'},
    ['l-red'] = {5, 10, 1, 'red3', 2, 120, 'add'},
    ['l-yellow'] = {5, 10, 1, 'yellow', 2, 120, 'add'},
    ['f-ciano'] = {8, 25, 0.3, 'ciano2', 2, 100, 'add'},
    ['m-ciano'] = {8, 30, 0.6, 'ciano', 3, 120, 'add'},
    ['m-pink'] = {8, 30, 0.6, 'pink', 3, 120, 'add'},
    ['m-orange'] = {8, 30,0.6, 'orange3', 3, 120, 'add'},
    ['m-pink4'] = {10, 40, 0.6, 'pink4', 3, 120, 'add'},
    ['b-yellow'] = {10, 60, 0.4, 'yellow', 6, 180, 'add'},
    ['b-pink2'] = {12, 90, 0.4, 'pink2', 10, 220, 'add'},
    ['b-blue'] = {12, 110, 0.3, 'blue4', 10, 220, 'add'},
    ['b-silver'] = {12, 120, 0.2, 'silver', 10, 220, 'add'},
    ['red-dramatic'] = {30, 200, 0.8, 'red2', 20, 255, 'add'}
}

function lightEffect(x, y, perfil_name, custom)
    if perfil_name == 'custom' then
        table.insert(light_effects, Light:new(x, y, custom))
    else
        table.insert(light_effects, Light:new(x, y, light_perfis[perfil_name]))
    end
end

function lightEffectUpdate(dt)
    for i = 1, #light_effects do
        light_effects[i]:update(dt)
    end

    local i = 1
    while i < #light_effects do
        if light_effects[i]:done() then
            table.remove(light_effects, i)
        else
            i = i + 1
        end
    end
end

menu_options = {}
menu_options.selected = 1
menu_options.keys = {'resume', 'reset', 'fullscreen_window', 'music', 'quit'}

function menu_options.resume()
    menupause = false
    menu_options.selected = 1
    music:setVolume(0.35)
    --Special condition (aka gambis)
    if not love.keyboard.isDown('w') and not love.keyboard.isDown('d') and 
        not love.keyboard.isDown('s') and not love.keyboard.isDown('a') and
         not love.keyboard.isDown('up') and not love.keyboard.isDown('down') and
          not love.keyboard.isDown('right') and not love.keyboard.isDown('left') then
        ship.vertical = 0
        ship.horizontal = 0
    end
end
function menu_options.reset()
    game_over = false
    victory = false
    fade_out = 0
    count_for_thanks = 0
    time_for_thanks = 5
    msg1_h = 0
    msg2_h = 0
    title_h = 0
    title_flag1 = false
    title_flag2 = false
    count_for_thanks2 = 0
    time_for_thanks2 = 2
    quit_count = 0
    quit_fv = 4
    world:destroy()
    world = love.physics.newWorld(0, 0)
    world:setCallbacks(beginContact, endContact, preSolve, postSolve)

    enemyController.level = 1
    enemyController.lastlevelup = 0
    enemyController.list = {}
    enemyController.list_last = {3, 40, 120, 180, 240}

    ship = Ship:new(width/2, height*0.82, 30)

    main_clock:reset()
    main_clock:start()
    menu_options.resume()
    if music_flag then
        music:stop()
        music:play()
    end
end
function menu_options.fullscreen_window()
    if resolution_mode == 'window' then
        resolution_mode = 'fullscreen'
        
        love.window.setMode(user_w, user_h, {vsync = true, fullscreen = true})
    elseif resolution_mode == 'fullscreen' then
        resolution_mode = 'window'
        love.graphics.scale(1/screen_multiplier)
        love.window.setMode(width, height, {vsync = true})
    end
end
function menu_options.music()
    if music_flag then
        music_flag = false
        music:stop()
    else
        music_flag = true
        music:play()
    end
end
function menu_options.quit()
    love.event.quit()
end

function menu_options.select()
    menu_options[menu_options.keys[menu_options.selected]]()
end

function normalize_shear(dt)
    if sx > 0 then
        sx = sx - dt
        if sx < 0 then
            sx = 0
        end
    end
    if sx < 0 then
        sx = sx + dt
        if sx > 0 then
            sx = 0
        end
    end

    if sy > 0 then
        sy = sy - dt
        if sy < 0 then
            sy = 0
        end
    end
    if sy < 0 then
        sy = sy + dt
        if sy > 0 then
            sy = 0
        end
    end
end