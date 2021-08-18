/// @description Insert description here
// You can write your code in this editor

if (current_time > Obj_CoinControl.lastCoinTime + Obj_CoinControl.timeBetweenCoinsMS) {
	SpawnCoin();
	Obj_CoinControl.lastCoinTime = current_time;
}