//ETAPE 5
class City { 
  int postalcode; 
  float x; 
  float y; 
  int iseecode;
  String name; 
  float population;
  float surface; 
  float density; 
  float altitude;
  int radius = 2;
  boolean affiche = false;
  boolean click = false;
  
  // put a drawing function in here and call from main drawing loop } 
  //Densité : nb personnes / surface
  //Drawing function
  void draw(){
    //Base : Points par ville
    //Dessin d'un point par ville
    //color black = color(0); 
    //En x y pour chaque ville (total count) on mets un point noir en (x,y)
    
    //set((int) mapX(this.x), (int) mapY(this.y), black);
    //noFill();

     //Densité
     //ellipse((int) mapX(this.x), (int) mapY(this.y), this.density/100,this.density/100);
     
     //Villes
     /*color c = color(148,214,41);
     fill(c);
     set((int) mapX(this.x), (int) mapY(this.y), c);
     fill(214,0,214);
     if(this.population > maxPopulation/15){
       ellipse((int) mapX(this.x), (int) mapY(this.y), 6, 6);
       fill(0,0,0);
       textSize(14);
       text(this.name, mapX(this.x)+5, mapY(this.y));
     }
     fill(0,0,0);
     textSize(30);
     text("Carte des villes de plus de 141000 habitants", 10, 770);*/
       //Ligne de séparation
  
  
  
     stroke(0,0,0);
     strokeWeight(2);
     if(affiche && click){
      fill(255,204,204);
      ellipse((int) mapX(this.x), (int) mapY(this.y), this.density/100,this.density/100);
     }else if(affiche && !click){
       fill(0,0,255);
       ellipse((int) mapX(this.x), (int) mapY(this.y), this.density/100,this.density/100);
     }else{
        fill(255,0,0);
        ellipse((int) mapX(this.x), (int) mapY(this.y), this.density/100,this.density/100);
     }
     
     //Altitude
       //Switch case pour avoir les différentes couleurs
         noStroke();
       color c;
       c = color (0,0,0);   
       int alt = (int)this.altitude;
       //On test les différentes valeurs de ALT
       if(alt < 20){
          c = color(19,94,1); 
       }else if(alt >= 20 && alt < 40){
         c = color(20,107,0); 
       }else if(alt >= 40 && alt < 70){
         c = color(24,134,1); 
       }else if(alt >= 70 && alt < 100){
         c = color(33,153,6); 
       }else if(alt >= 100 && alt < 150){
         c = color(65,174,7); 
       }else if(alt >= 150 && alt < 200){
         c = color(90,187,19); 
       }else if(alt >= 200 && alt < 300){
         c = color(121,198,30); 
       }else if(alt >= 300 && alt < 400){
         c = color(160,231,75); 
       }else if(alt >= 400 && alt < 500){
         c = color(198,237,96); 
       }else if(alt >= 500 && alt < 650){
         c = color(247,242,138); 
       }else if(alt >= 650 && alt < 800){
         c = color(239,186,82); 
       }else if(alt >= 800 && alt < 1000){
         c = color(215,154,73); 
       }else if(alt >= 1000 && alt < 1250){
         c = color(200,134,56); 
       }else if(alt >= 1250 && alt < 1500){
         c = color(166,104,53); 
       }else if(alt >= 1500 && alt < 1750){
         c = color(134,85,44); 
       }else if(alt >= 1750 && alt < 2000){
         c = color(106,65,33); 
       }else{
         c = color(74,44,23); 
       }
       
       fill(c);
       ellipse((int) mapX(this.x), (int) mapY(this.y), 10,10);
       fill(0, 0, 0);
       textSize(30);
  }
  
  
   // Ceci est la fonction de test correspondante 
   boolean contains(int px, int py) { 
   // Comme nous dessinons un cercle, on utilise ici la distance 
   // entre (px, py) et le centre du cercle, 
   // et on ajoute un pixel supplémentaire pour faciliter 
   // la sélection à la souris 
   //return dist(mapX(x), mapY(y), px, py) <= 10/2 + 1;
   return dist(mapX(x), mapY(y), px, py) <= (this.density/100)/2 + 1;
 }
 
      void afficheNom(){
      textFont(Font2);
      if(affiche){
        fill(0, 0, 0);
        text(name+" ("+iseecode+")", 975, 50);
        text(population+" habitants", 941, 74);
        text(surface+" km²", 915, 98);
        text(density+" habitants/km²", 916, 122);
        text(altitude+" m", 917, 146);
        
        //Ecriture du texte
        fill(222,222,222);
        rect((int) mapX(this.x) + (this.density/100)/2-4, (int) mapY(this.y)-10, textWidth(name) +7 , 20);
        fill(0,0,0);
        text(name, (int)mapX(this.x) + this.density/100/2, (int) mapY(this.y)+6);
      }
     }
     
     void afficheNomClick(){
      textFont(Font2);
      if(click){
        fill(0, 102, 153);
        text(name+" ("+iseecode+")", 1190, 50);
        text(population+" habitants", 1190, 74);
        text(surface+" km²", 1190, 98);
        text(density+" habitants/km²", 1190, 122);
        text(altitude+" m", 1190, 146);
        
        //Ecriture du texte
        fill(222,222,222);
        rect((int) mapX(this.x) + (this.density/100)/2-4, (int) mapY(this.y)-10, textWidth(name) +7 , 20);
        fill(0,0,0);
        text(name, (int)mapX(this.x) + this.density/100/2, (int) mapY(this.y)+6);
      }
    }
}