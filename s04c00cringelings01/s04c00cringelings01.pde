// Expresión Digital - Diseño Digital - UDD - 2016
// Catalina Ringeling Selman
// s04c00cringelings


/* Se dibujarán cuadrados, círculos y rectángulos de diferentes tamaños y posiciones en un canvas de 1000x800. 
Utilizando keyPress y la letra a, se irán cambiando de colores, según la cantidad de veces que se aprete la tecla.
Los Colores a utilizar, varían entre los colores cafe, verde, azules, rosados, morados, entre otros, en los cuadrados más grandes, en los otros ellipses y rectangulos, solo cambia el orden y el color.
Otros colores random entre amarillos, verdes, rojos, entre otros, en los círculos.
*/

//Se guarda en pdf.
import processing.pdf.*;
color random;


void setup() {                          // void setup() se efectúa al iniciarlo, una vez.
  size(1000,800);                       // Tamaño del Canvas.
  colorMode(HSB, 360, 100, 100);        // Tipo de color que se utiliza para imprimir.

}

void draw(){                                              // void draw() se efectúa muchas veces de principio a fin.
  beginRecord(PDF, "s04c00cringelings01.pdf");
  background(35);                                         // Color de Fondo - Gris Oscuro.
  for(int x = 2; x < width; x += 20) {                    // Variables para X. Se define el valor para x.
    for(int y = 2; y < height; y += 20) {                 // Variables par Y. Se define el valor para y.
      noStroke();                                         // No existe la Línea.
      
      float z = random(2);                                // Se declara que la variable decimal z es igual a cualquier número decimal entre 0 y 1,99999
      if (z< 0.9){                                        /* Se declara que si la variable z es menos que 0.9, que los colores 
                                                             sean (random(250), random(100), random (150)); para este cuadrado. */
        fill(random(360));
        rect(x, y, 15, 15);                               // Tamaño y posición de los rectángulos (cuadrados) más grandes.
        
      } else if (z< 1){                                   /* else if - Significa que además de lo mencionado anteriormente, 
                                                             si la variable z es menos a 1, pasa lo siguiente */
        fill(random(360), random(360), random(360));      // Las ellipses van variando de color entre estos colores random(255), random(255), random(255)
        ellipse(x+7, y+10, 8, 8);                         // Tamaño y posición de las ellipses (círculos).
        
      } else {                                            // Además de todo lo anterior, se le agregará lo siguiente.
        float w = random(4);                              // Se declara que la variable decimal w es igual a cualquier número decimal entre 0 y 3,99999
        if (w< 1){                                        /* Si esta variable es menor a 1, los colores irán cambiando de color según el siguiente random de colores
                                                             random(80), random(150), random(100) */
        fill(random(137), random(46), random(58));
        rect(x, y, 10, 4);                                // Tamaño y posición del rectángulo.
        
      } else {                                            // Además, se agrega otro rectángulo.
        float v = random(6);                              /* con una nueva variable v, donde se declara una variable decimal 
                                                             que es igual a cualquier numero decimal entre  0 y 5,99999 */
        if (v< 1){                                        /* Si es menor a 1, los colores cambiarán de color entre los siguiente,
                                                             random(255), random (255), random(255) */
        fill(random(340), random(60), random(48));
        rect(x, y+10, 10, 4);                             // Tamaño y posición del rectángulo.
        }
        }
      }
    }
  }
     
       noLoop();                                            // el noLoop() para que no sea aleatoria la imágen. Imagen fija.
       endRecord();                                         // Se guarda en PDF hasta acá
}

void keyPressed(){                                          // Se efectúa cuando se apretan las teclas declaradas a continuación.
  if (key == 'a') {                                         // Al apretar la tecla 'a', se cambia el color entre el rango de blanco y negro
    random = color(random(360));
    redraw ();                                              // Se "redibuja", se cambian los colores. 
    
  } else if (key == 'e') {                                  // Al apretar la letra 'e', se hace un exit() cuando ya está corriendo el programa.
    exit();

  }
}