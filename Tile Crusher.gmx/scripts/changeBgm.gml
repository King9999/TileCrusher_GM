/***selects music tracks.
-1 = No music
0 = Street Lights
1 = Slipped
2 = Trade Off
3 = Lost ***/

trackName = "";
sound_stop_all();
switch (argument0)
{
    case -1:
        trackName = "None";
        break;
        
    case 0:
        sound_volume(Street_Lights, 0.3);
        sound_loop(Street_Lights);
        trackName = "Street Lights";
        break;
        
    case 1:
        sound_volume(Droid_March, 0.3);
        sound_loop(Droid_March);
        trackName = "Droid March";
        break;
        
    case 2:
        sound_volume(Kick_It, 0.3);
        sound_loop(Kick_It);
        trackName = "Kick It";
        break;
        
    case 3:
        sound_volume(Stunt, 0.3);
        sound_loop(Stunt);
        trackName = "Stunt";
        break;
        
    case 4:
        sound_volume(Temperence, 0.3);
        sound_loop(Temperence);
        trackName = "Temperence";
        break;
}

//update file
var file = working_directory + "records.ini";
ini_open(file);
ini_write_real("Music", "track", argument0);
ini_close();

return trackName;
