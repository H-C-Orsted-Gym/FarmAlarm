/// @description The player kick event
// You can write your code in this editor

// Delete instance
instance_destroy(self);

// Remove from list
var listIndex = self.listId;
ds_list_delete(birdsList, listIndex);

Obj_Player.playerScore += 1;