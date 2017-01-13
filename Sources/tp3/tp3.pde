//Enregistrement dans des variables globales
//globally 
//declare the min and max variables that you need in parseInfo 
float minX, maxX; 
float minY, maxY; 
int totalCount; // total number of places 
float minPopulation, maxPopulation; 
float minSurface, maxSurface; 
float minAltitude, maxAltitude; 
int minPopulationToDisplay;
  
//Déclaration des variables correspondant au colonnes ids pour x et y
int X = 1; 
int Y = 2;

//Les tableaux où seront stockés les coordonnées
float x[];
float y[];

//Création var Globale cit et testCity
City cit[];
City testCity;
City citySave = null;
City citySelection = null;

//Texte
PFont Font1;
PFont Font2;

//Image 
PImage legende;

//Scrollbar
HScrollbar hs1;




//Setup de l'application
void setup() { 
  size(1500,800); 
  readData();
  //Mes fonts
  Font1 = createFont("Arial Bold", 16);
  Font2 = createFont("Arial", 15);
  //L'image pour la légende
  legende = loadImage("legende_densite.png");
  //Scrollbar
  hs1 = new HScrollbar(1078, 230, 300, 20, 1);
} 



//Dessin du background avec couleur entre parenthèse en niveau de gris
void draw(){ 
  //Arrière en blanc
  background(255); 
  
  //Affichage
  for(int i=0; i < totalCount; i++)
    //Test si cit différent de null
    if(cit[i] != null && cit[i].population > minPopulationToDisplay){
      cit[i].draw();
    }
    fill(0,0,0);
    //Affichage de la population
    textSize(30);
    text("Carte : Altitude + densité de population", 80, 790);
    
    //Affichage des informations
    textFont(Font1);
    text("Nom de la ville : ", 843, 50);
    text("Population : ", 843, 74);
    text("Surface : ", 843, 98);
    text("Densité : ", 843, 122);
    text("Altitude : ", 843, 146);
    //On affiche ou non le nom de la ville
    if(citySave != null){
      citySave.afficheNom();
    }else{
      textFont(Font2);
      text("null", 973, 50);
    }
    if(citySelection != null && citySelection.population > minPopulationToDisplay){
      citySelection.afficheNomClick();
    }
    
    //Image pour la densite
    textFont(Font1);
    text("Légende", 868, 200);
    image(legende, 843, 215);
    //Affichage du slider
    text("Taille de la population", 1145, 205);
    hs1.update();
    textFont(Font2);
    text("Affichage de la population supérieures à "+minPopulationToDisplay, 1080, 265);
    hs1.display();
    minPopulationToDisplay = (int)(hs1.getPos() * 10);
}



//Lecture de la souris
void mouseMoved() {
  testCity = pick(mouseX, mouseY);
  if(testCity != null){
    if(citySave == null || !testCity.name.equals(citySave.name)){
      testCity.affiche = true;
      citySave = testCity;
    }else if (testCity != citySave){
      citySave.affiche = false;
      testCity.affiche = false;
    }
  }else{
    citySave = null;
  }
}

//Clique de la souris
void mouseClicked() {
  testCity = pick(mouseX, mouseY);
  if(testCity != null){
    if(citySelection == null){
      citySelection = testCity;
      citySelection.click = true;
    }else{
    citySelection.click = false;
    citySelection = null;
    }
  }else{
    citySelection = null;
  }
}



//Pick
City pick(int px, int py){
  int i = cit.length-100;
  while(i > 0){
    if(cit[i].contains(px, py) && cit[i].population > minPopulationToDisplay && cit[i]!=null){
      return cit[i];
    }
   i--;
  }
 return null;
}


//Lecture appui au clavier
void keyPressed() {
  if (key == '+') {
    if(minPopulationToDisplay > 0){
      minPopulationToDisplay *= 1.5;
    }else{
      minPopulationToDisplay += 5;
    }
  } else if(key == '-') {
    if(minPopulationToDisplay > 0){
      minPopulationToDisplay /= 1.5;
    }
  }
   redraw();
}



//Lecture des données du fichier
void readData() { 
  String[] lines = loadStrings("./villes.tsv"); 
  parseInfo(lines[0]); // read the header line  
   cit = new City[totalCount];
  //Commence à 2 car la première ligne correspond aux données calculées
    //La deuxieme ligne pour les en-têtes qui décrivent à quoi correspondent les différentes colonnes du fichier
  for (int i = 2 ; i < totalCount ; ++i) { 
    String[] columns = split(lines[i], TAB); 
    //Instanciation
    cit[i-2] = new City();
    cit[i-2].postalcode = int (columns[1]); 
    cit[i-2].x = float (columns[1]); 
    cit[i-2].y = float (columns[2]);
    cit[i-2].iseecode = int (columns[3]);
    cit[i-2].name = (columns[4]);
    cit[i-2].population = float (columns[5]);
    cit[i-2].surface = float (columns[6]);
    cit[i-2].density = float (columns[5]) / float (columns[6]);
    cit[i-2].altitude = float (columns[7]);
  }
}



//
void parseInfo(String line) {
  String infoString = line.substring(2); // remove the # 
  String[] infoPieces = split(infoString, ','); 
  totalCount = int(infoPieces[0]); 
  //Utilisation de data structure
  minX = float(infoPieces[1]); 
  maxX = float(infoPieces[2]); 
  minY = float(infoPieces[3]); 
  maxY = float(infoPieces[4]); 
  minPopulation = float(infoPieces[5]); 
  maxPopulation = float(infoPieces[6]); 
  minSurface = float(infoPieces[7]); 
  maxSurface = float(infoPieces[8]);
  minAltitude = float(infoPieces[9]); 
  maxAltitude = float(infoPieces[10]); 
  minPopulationToDisplay = 10;
} 



//Fonction de conversion X
  //Fenetre de 800 par 800, Volontairement mis à 780 pour avoir une vue de tout les éléments
float mapX(float x) { 
  return map(x, minX, maxX, 0, 780); 
}



//Fonction de conversion Y
float mapY(float y) { 
  return map(y, minY, maxY, 780, 0); 
}