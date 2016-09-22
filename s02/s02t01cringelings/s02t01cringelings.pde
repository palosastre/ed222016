// Expresión Digital - Diseño Digital - UDD - 2016
// Catalina Ringeling Selman
// s02t01cringelings

//Crear patrón dentro de un for que contiene un void draw ()
//En su interior está compuesto de ellipses con colores y tamaños diferentes definidos previamente

//Indicar Variables x e y.
int x = 2;
int y = 4;


void setup() {
  size(1024, 768); //tamaño de la "mesa" de trabajo
  background(177, 78, 78); //Color del fondo en RGB.
}

void draw(){
      
  for (int x = 0; x <= width; x += 20); {    // Se está definiendo el valor para x.
   for (int y = 0; y <= height; y += 20) {   // Se está definiendo el valor para y.
      float r = random(210);                  // Random de colores en R (escala de rojo)
      float g = random(10, 50);               // Random de colores en G (escala de verdes) entre el 10 y el 50
      float b = random(140);                  // Random de colores en B (escala de azules)
      fill(r, g, b);                          // Define el color del relleno en escala rgb
      noStroke();                             // No hay línea
      ellipse(x, y, 20, 20);
    }
  }

    for (int x = 0; x <= width; x += 10); {    // Se está definiendo el valor para x.
     for (int y = 0; y <= height; y += 20) {   // Se está definiendo el valor para y.
      float r = random(200);                   // Random de colores en R (escala de rojo)
      float g = random(10);                    // Random de colores en g (escala de verde)
      float b = random(100);                   // Random de colores en b (escala de azul)
      fill(r, g, b);
      noStroke();
      ellipse(x, y, 16, 16);
    }
   }
    
    for (int x = 0; x <= width; x += 20); {    // Se está definiendo el valor para x.
     for (int y = 0; y <= height; y += 20) {   // Se está definiendo el valor para y
      float r = random(200);
      float g = random(10);
      float b = random(100);
      fill(r, g, b);
      noStroke();
      ellipse(x, y, 12, 12);
    }
      }
    
    for (int x = 0; x <= width; x += 20); {    // Se está definiendo el valor para x.
     for (int y = 0; y <= height; y += 20) {   // Se está definiendo el valor para y.
      float r = random(200);
      float g = random(10);
      float b = random(100);
      fill(r, g, b);
      noStroke();
      ellipse(x, y, 8, 8);
    }
  }
}
  