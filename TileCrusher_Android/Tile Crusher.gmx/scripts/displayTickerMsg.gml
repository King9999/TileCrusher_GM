//displays random ticker messages

randomize();
num = floor(random_range(1, 10));   //returns 1 to 9
show_debug_message("Showing ticker message " + string(num));

switch (num)
{
    case 1:
        //display a message about how rage quits won't add up if you already completed the level
        argument0 = "You can redo levels you've beaten, and if you quit, it won't count towards your rage quit total.";
        break;
        
    case 2:
        //encourage feedback
        argument0 = "Questions about the game? Tweet at me! @MikeADMurray";
        break;
        
    case 3:
        //ask for a purchase
        if (global.isDemo)
        {
            argument0 = "Like the demo? Please buy my game! A hundred levels await!";
        }
        else
        {
            argument0 = "Thank you for playing Tile Crusher!"
        }
        break;
        
    case 4:
        //check number of rage quits
        if (global.rageTotal > 20)
        {
            argument0 = "You've been quitting a lot of levels. Don't get discouraged!";           
        }
        else
        {
            argument0 = "You're doing well so far. Keep it up!";           
        }
        break;
        
    case 5:
        //give a hint about restoring tiles even when numbers of tiles crushed is at 0.
        argument0 = "Make a note of tiles that are broken from the start...";
        break;
        
    case 6:
        //super tile tip
        argument0 = "Super tiles don't use up your turns. Use them to navigate levels safely!";
        break;
        
    case 7:
        argument0 = 'Which background do you prefer? How about music? Change them in "Help & Options"!';
        break;
        
    case 8:
        if (!global.halfLevelsComplete)
        {
            argument0 = "New levels are unlocked by completing 5 levels.";
        }
        else
        {
            argument0 = "Hope you're enjoying the EX levels! Play them in any order!";
        }
        break;
        
    case 9:
        argument0 = "Chain tiles are powerful, but be careful you don't mess up!";
        break;
}

show_debug_message("Message: " + argument0);
return argument0;
