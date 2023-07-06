if !instance_exists(o_skeleton) exit;//turns off the parallax effect after we die, to avoid getting an error message because the movement of the background layers would be tied to an object that no longer exists
layer_x("CloseGravesBackground", o_skeleton.x/ 2.5);
layer_x("FarGravesBackground", o_skeleton.x/ 1.8);
layer_x("CloudsBackground", o_skeleton.x/ 1.2);//this all means that the background's movement is going to be tied to the player's movement, but that it will move at slower paces, because each speed is being divided by a certain number

