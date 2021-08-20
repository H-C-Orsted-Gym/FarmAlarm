/// @description The gun shot kill
// You can write your code in this editor

// Delete instance
instance_destroy(self);

// Play Effect
effect_create_above(ef_firework, self.x, self.y, 0.1, c_red)

// Remove from list
var listIndex = self.listId;
ds_list_set(birdsList, listIndex, undefined);

Obj_Player.playerScore += 1;