-- point txt reader to your temp directory/current_song.txt

local function write_current_song()
    local file = io.open(os.getenv("TMP") .. "/current_song.txt", "w")
    if file then
      file:write(mp.get_property("filename"):match("(.*)%..-$") or mp.get_property("filename"))
      file:close()
    else
      print("Failed to open current_song.txt")
    end
  end
  
mp.register_event("file-loaded", write_current_song)  
