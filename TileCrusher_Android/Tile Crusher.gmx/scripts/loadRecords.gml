
/* loads records from existing file. If it doesn't exist, one is created. */


show_debug_message("Loading records");

ini_open(argument0);
global.hours = ini_read_real("Time", "hours", 0);
global.minutes = ini_read_real("Time", "minutes", 0);
global.seconds = ini_read_real("Time", "seconds", 0);
global.completionRate = ini_read_real("Progress", "completion", 0);
global.crushTotal = ini_read_real("Progress", "crushTotal", 0);
global.levelsFinished = ini_read_real("Progress", "levelsFinished", 0);
global.lossTotal = ini_read_real("Progress", "lossTotal", 0);
global.rageTotal = ini_read_real("Progress", "rageTotal", 0);
global.trackFile = ini_read_real("Music", "track", 0);
global.firstTimePlaying = ini_read_real("Progress", "firstTimePlaying", 1);
global.halfLevelsComplete = ini_read_real("Progress", "halfwayPoint", 0);
global.backgroundType = ini_read_real("Background", "type", 0);
global.exPage = ini_read_real("Page State", "exPage", 0);
global.allLevelsComplete = ini_read_real("Progress", "gameFinished", 0);

for (var i = 0; i < MAX_LEVELS; i++)
{
    global.finishedLevel[i] = ini_read_real("Completed Levels", "level" + string(i+1), false);
    
}

for (var j = 10; j < MAX_LEVELS / 2; j++)
{
    global.lockedLevel[j] = ini_read_real("Locked Levels", "level" + string(j+1), true);
}
ini_close();
