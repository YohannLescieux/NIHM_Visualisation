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
  
  // put a drawing function in here and call from main drawing loop } 
  //Densité : nb personnes / surface
  //Drawing function
  void draw(){
    /*Base : Points par ville
    //Dessin d'un point par ville
    color black = color(0); 
    //En x y pour chaque ville (total count) on mets un point noir en (x,y)
    set((int) mapX(this.x), (int) mapY(this.y), black);
    */
    
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
     
     
     
     //Altitude
       //Switch case pour avoir les différentes couleurs
     /*noStroke();
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
     text("Carte des altitudes", 10, 770);*/
     
     
     //Altitude + ville (A corriger)

	//FAIRE DEUX DRAW DIFFERENTS ICI; et deux FOR dans TP2.pde
     /*noStroke();
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
     ellipse((int) mapX(this.x), (int) mapY(this.y), 9,9);
     
     fill(214,0,214);
     if(this.population > maxPopulation/15){
       ellipse((int) mapX(this.x), (int) mapY(this.y), 6, 6);
       fill(0,0,0);
       textSize(20);
       text(this.name, mapX(this.x)+5, mapY(this.y));
     }
     fill(0,0,0);
     textSize(30);
     text("Carte des altitudes", 10, 770);*/
  }
}