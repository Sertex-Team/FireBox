term.clear()
term.setCursorPos(1,1)
print("Insert a disk to code")
local e, par = os.pullEvent("disk")
sleep(0.1)
term.clear()
term.setCursorPos(1,1)
print("FireBox Developer Kit")
write("Name of the game: ")
local name = read()
write("Version: ")
local version = read()
write("Author: ")
local author = read()
write("Name of the main file to run (EXAMPLE: mygame): ")
local run = read()
local f = fs.open(disk.getMountPath(par).."/fireboxlaunch","w")
f.write("run = \""..run.."\"\ngameName = \""..name.."\"\nversionGame = \""..version.."\"\nauthorGame = \""..author.."\"\n")
f.close()
disk.setLabel(par, run.." [FireBox]")
shell.run("/rom/programs/edit", disk.getMountPath(par).."/"..run)
term.clear()
term.setCursorPos(1,1)
print("Run: edit "..disk.getMountParth(par).."/"..run.." to edit the game")
