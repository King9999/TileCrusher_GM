
/* Set up the global variables */
global.isDemo = false;       //TODO: set to FALSE for full version build.
global.adSupported = true;


//record data
global.hours = 0;
global.minutes = 0;
global.seconds = 0;
global.completionRate = 0;
global.crushTotal = 0;
global.levelsFinished = 0;
global.lossTotal = 0;
global.rageTotal = 0;
global.trackFile = 0;   //used to play a music track.
global.firstTimePlaying = true;
global.halfLevelsComplete = false;  //if true, next 50 levels are unlocked.
global.backgroundType = 0;      //determines the background that's used
global.allLevelsComplete = false;

//background
global.backgroundSprite = 0;       //holds instance of current background.
global.bgCopy = 0;                  //only used for background 1

global.nextScreen = 0;      //holds variable to next room.
global.previousScreen = 0;  //used to determine which screen to move to from tutorial screen
global.selectedLevel = 0;   //holds the level the player clicks on select screen

//level states
global.finishedLevel[0] = false;
global.lockedLevel[0] = false;
global.exPage = false;            //used to save position of level select page

//set mouse cursor
//cursor_sprite = mouse_sprite;

/*if (!os_windows)
    window_set_cursor(cr_none);
else
    window_set_cursor(cr_arrow);*/

//screen data. Used to scale the graphics. 800x480 is the default.
/*global.scaleX = display_get_width() / 800;
global.scaleY = display_get_height() / 480;
show_debug_message("Scale X is " + string(global.scaleX));
show_debug_message("Display width is " + string(display_get_width()));*/
