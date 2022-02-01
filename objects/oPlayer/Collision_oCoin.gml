//destroy coin upon collision and add points/coins

instance_destroy(other);

global.coins += 1;
global.points += 100;