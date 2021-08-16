/// @description Insert description here
// You can write your code in this editor

dir[0] = keyboard_check(ord("D")) - keyboard_check(ord("A"));
dir[1] = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x = x + dir[0] * 3;
y = y + dir[1] * 3;