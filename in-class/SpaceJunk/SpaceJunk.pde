/**
 * Space Junk  
 * by Ira Greenberg (zoom suggestion by Danny Greenberg).
 * 
 * Rotating cubes in space using a custom Cube class. 
 * Color controlled by light sources. Move the mouse left
 * and right to zoom.
 */

// Used for oveall rotation
float angle;

// Cube count-lower/raise to test performance
int limit = 700;

// Array for all cubes
Cube[] cubes = new Cube[limit];

void setup() {
  size(1920, 1080, P3D); 
  background(0); 
  noStroke();

  // Instantiate cubes, passing in random vals for size and postion
  for (int i = 0; i < cubes.length; i++){
    cubes[i] = new Cube(int(random(-20, 20)), int(random(-20, 20)), 
                        int(random(-10, 10)), int(random(-140, 140)), 
                        int(random(-180, 180)), int(random(-180, 180)));
  }
}

void draw(){
  background(0); 
  fill(200);

  // Set up some different colored lights
  pointLight(78, 45, 125, 65, 60, 100); 
  pointLight(32, 40, 255, -65, -60, -150);

  // Raise overall light in scene 
  ambientLight(70, 70, 10); 

  // Center geometry in display windwow.
  // you can changlee 3rd argument ('0')
  // to move block group closer(+) / further(-)
  translate(width/2, height/2, -50 + mouseX * 0.65);

  // Rotate around y and x axes
  rotateY(radians(angle));
  rotateX(radians(angle));

  // Draw cubes
  for (int i = 0; i < cubes.length; i++){
    cubes[i].drawCube();
  }
  
  // Used in rotate function calls above
  angle += 0.1;
}
