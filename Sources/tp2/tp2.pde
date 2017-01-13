//Enregistrement dans des variables globales
//globally 
//declare the min and max variables that you need in parseInfo 
float minX, maxX; 
float minY, maxY; 
int totalCount; // total number of places 
float minPopulation, maxPopulation; 
float minSurface, maxSurface; 
float minAltitude, maxAltitude; 
  
//Déclaration des variables correspondant au colonnes ids pour x et y
int X = 1; 
int Y = 2;

//Les tableaux où seront stockés les coordonnées
float x[];
float y[];

//Création var Globale cit
City cit[];

//Setup de l'application
void setup() { 
  size(800,800); 
  readData();
} 

//Dessin du background avec couleur entre parenthèse en niveau de gris
void draw(){ 
  //Arrière en blanc
  background(255); 
  
  //Affichage
  for(int i=0; i < totalCount; i++)
    //Test si cit différent de null
    if(cit[i] != null){
      cit[i].draw();
    }
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