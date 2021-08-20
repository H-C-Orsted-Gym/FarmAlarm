/// @description Insert description here
// You can write your code in this editor

var c = (current_time / 1000);
var k = (1 / c) * 150000;

if (current_time - k > self.lastBirdSpawn) {
	SpawnBird();
	self.lastBirdSpawn = current_time;
	show_debug_message(self.lastBirdSpawn);
}