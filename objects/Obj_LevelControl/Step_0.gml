/// @description Insert description here
// You can write your code in this editor

var c = (current_time / 1000);
var k = (1 / c) * 60000;

if (current_time > self.lastBirdSpawn + k) {
	SpawnBird();
	self.lastBirdSpawn = current_time;
}