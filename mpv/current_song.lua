function write_current_song()
    local filename = mp.get_property("filename")
    if filename ~= nil then
        -- filter audio extensions
        local extensions = {".mp3", ".wav", ".opus", ".aac", ".flac", ".ogg", ".m4a"}
        
        for _, ext in ipairs(extensions) do
            if filename:sub(-#ext) == ext then
                filename = filename:sub(1, -(#ext + 1))
                break
            end
        end

        -- write to out
        local file = io.open("PATH/TO/YOUR/OUTPUT", "w", "utf-8")
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
