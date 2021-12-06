//resets the entire game.

show_debug_message("Resetting record file");

//create file

ini_open(argument0);
ini_write_real("Time", "hours", 0);
ini_write_real("Time", "minutes", 0);
ini_write_real("Time", "seconds", 0);
ini_write_real("Progress", "completion", 0);
ini_write_real("Progress", "crushTotal", 0);
ini_write_real("Progress", "levelsFinished", 0);
ini_write_real("Progress", "lossTotal", 0);
ini_write_real("Progress", "rageTotal", 0);
ini_write_real("Music", "track", global.trackFile);
ini_write_real("Progress", "firstTimePlaying", global.firstTimePlaying);
ini_write_real("Progress", "halfwayPoint", 0);
ini_write_real("Background", "type", global.backgroundType);
ini_write_real("Page State", "exPage", 0);
ini_write_real("Progress", "gameFinished", 0);

for (var i = 0; i < MAX_LEVELS; i++)
{
    ini_write_real("Completed Levels", "level" + string(i+1), 0);    
}

for (var j = 0; j < MAX_LEVELS / 2; j++)    //there are only 40 locked levels; the rest are unlocked.
{
    if (j < 10)
    {
        ini_write_real("Locked Levels", "level" + string(j+1), false);  //first 10 levels are unlocked.
    }
    else
    {
        ini_write_real("Locked Levels", "level" + string(j+1), true);
    }
}

ini_close();
