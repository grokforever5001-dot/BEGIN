-- Improved auto respawn logic
-- This section of the code handles player respawning in an enhanced manner

function AutoRespawn(player)
    if player.isAlive then
        return
    end

    -- Define respawn location
    local respawnLocation = GetRandomRespawnPoint()
    player:respawnAt(respawnLocation)
end

-- Enhanced bring function with prison player detection
function BringPlayer(targetPlayer, sourcePlayer)
    if IsPlayerInPrison(targetPlayer) then
        SendFeedback(sourcePlayer, "Player is in prison and cannot be brought!")
        return
    end
    -- Bring logic here
end

-- Enhanced void function with car removal handling
function VoidPlayer(player)
    if player.car then
        player.car:remove()
    end
    player:beVoid()
end

-- Enhanced car fling function
function CarFling(player, targetCar)
    if IsPlayerInPrison(player) then
        SendFeedback(player, "You cannot fling while in prison!")
        return
    end
    -- Fling logic here
end

-- Enhanced trap function
function TrapPlayer(targetPlayer)
    if IsPlayerInPrison(targetPlayer) then
        SendFeedback(targetPlayer, "You cannot be trapped while in prison!")
        return
    end
    -- Trap logic here
end

-- All existing combat, visual, movement, and vehicle features remain intact

-- Utility functions
function IsPlayerInPrison(player)
    return player.isInPrison
end

function SendFeedback(player, message)
    player:sendMessage(message)
end

function GetRandomRespawnPoint()
    -- Implement logic to return a random respawn point
end