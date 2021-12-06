/* this script is used to change the background depending on player preferences. */

//destroy previous instance
with (global.backgroundSprite)
{
    instance_destroy();
}

with (global.bgCopy)
{
    instance_destroy();
}


switch (argument0)
{
    case 0:
        global.backgroundSprite = instance_create(0, 0, bgObj);
        global.bgCopy = instance_create(-room_width, 0, bgObj);
        break;
        
    case 1:
        global.backgroundSprite = instance_create(0, 0, bg2Obj);
        break;
        
    case 2:
        global.backgroundSprite = instance_create(0, 0, bg3Obj);
        break;
}

//save changes
ini_open(working_directory + "records.ini");
ini_write_real("Background", "type", argument0);
ini_close();
