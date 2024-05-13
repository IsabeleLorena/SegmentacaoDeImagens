void setup() //<>// //<>// //<>//
{
  size (400,296);
  noLoop();
  background(255);
}
void draw()
{
  PImage imgEntrada=loadImage("imagem3.jpg");
  PImage imgSaida =createImage(imgEntrada.width, imgEntrada.height, RGB);
  PImage imgSaida1 =createImage(imgEntrada.width, imgEntrada.height, RGB);
 
  int brilho =0;
  
  PImage imgEntradaDeta=loadImage("imagem3deta.jpg");
  int countSaida = 0;
  int countDeta = 0;
  
for (int y = 0; y<imgEntrada.height; y++)
 {
   for(int x = 0 ; x<imgEntrada.width; x++)
   {
     int pos = y*imgEntrada.width + x;
     int valor =int(red(imgEntrada.pixels[pos]));
     valor +=brilho;
     if (valor >195)  {
        valor=255;
        imgSaida.pixels[pos] = imgEntrada.pixels[pos];

        countSaida++;
      }
      else  {
        valor=0;
      }
     
     imgSaida1.pixels[pos] = color(valor);
     if(int(red((imgEntradaDeta.pixels[pos]))) > 0) {
       countDeta++;
     }
   }
 }
 
 println(countDeta);
 
 println(countSaida);
 
 image(imgSaida1, 0,0);
 
 save("imgSaida3DetaScript.jpeg");
 image(imgSaida, 0,0);
 save("imgSaida3.jpeg");
 }
