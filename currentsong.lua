function write_current_song()
    local filename = mp.get_property("filename")
    if filename ~= nil then
        filename = filename:sub(1, -6) -- Remove the last 5 characters
        
        local file = io.open("C:\\Users\\-\\Music\\current_song.txt", "w", "utf-8")
        if file == nil then
            return
        end
        file:write(filename)
        file:close()
    end
end

mp.observe_property("filename", "string", write_current_song)

mp.register_event("file-loaded", function()
    write_current_song()
end)
