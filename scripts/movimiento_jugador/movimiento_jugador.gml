 // Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información

function movimiento_jugador(){
	
	if keyboard_check(vk_right) and not place_meeting(x+4,y,wall) {
    sprite_index=sprite12;
    image_xscale = 1;
    x += velocidad;
	image_speed = 0.6;
  } else if keyboard_check(vk_left) and not place_meeting(x-4,y,wall) {
    sprite_index=sprite12;
    image_xscale = -1;
    x -= velocidad;
    image_speed = 0.6;
  
  } else if not keyboard_check(vk_left) and not keyboard_check(vk_right) {
    // No nos estamos moviendo
	sprite_index=playstatic;
    image_speed = 0.4;
  }

}