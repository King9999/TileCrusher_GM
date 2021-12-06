//creates an instance of crush particle object.
//particle effects for crushing/restoring tiles
depth = -2;
partSystem = part_system_create();

crushParticle = part_type_create();
//sparkColor = make_color_rgb(61, 238, 255);
part_type_shape(crushParticle, pt_shape_pixel);
part_type_size(crushParticle, 1, 8, 0, 0);
part_type_scale(crushParticle, 1, 1);
part_type_direction(crushParticle, 0, 359, 0, 10);
part_type_speed(crushParticle, 1, 3, 0, 0);
part_type_life(crushParticle, 15, 60);

part_particles_create(partSystem, argument0, argument1, crushParticle, 15);
