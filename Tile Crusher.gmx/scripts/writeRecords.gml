//updates record file. If it doesn't exist, one is created.

show_debug_message("Updating record file");

//create file

ini_open(argument0);
ini_write_real("Time", "hours", global.hours);
ini_write_real("Time", "minutes", global.minutes);
ini_write_real("Time", "seconds", global.seconds);
ini_write_real("Progress", "completion", global.completionRate);
ini_write_real("Progress", "crushTotal", global.crushTotal);
ini_write_real("Progress", "levelsFinished", global.levelsFinished);
ini_write_real("Progress", "lossTotal", global.lossTotal);
ini_write_real("Progress", "rageTotal", global.rageTotal);
ini_write_real("Music", "track", global.trackFile);
ini_write_real("Progress", "firstTimePlaying", global.firstTimePlaying);
ini_write_real("Progress", "halfwayPoint", global.halfLevelsComplete);
ini_write_real("Background", "type", global.backgroundType);

for (var i = 0; i < MAX_LEVELS / 2; i++)
{
    ini_write_real("Completed Levels", "level" + string(i+1), global.finishedLevel[i]);
   
}

for (var j = 10; j < MAX_LEVELS / 2; j++)
{
     ini_write_real("Locked Levels", "level" + string(j+1), global.lockedLevel[j]);
}

ini_close();
