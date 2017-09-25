 //declare bacteria variables here 
 Bacteria[] aLot;
 void setup()   
 {     
   size(500,500);
   aLot = new Bacteria[200];
   for(int i=0; i<aLot.length; i++){
     aLot[i] = new Bacteria();
   }
   
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
   background(255);
   for(int i = 0; i<aLot.length; i++){
     aLot[i].show();
     aLot[i].walk();
   }
   
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
   int myX, myY;
   Bacteria(){
     myX = 250;
     myY = 250;
   }
   void walk(){
     myX = myX + (int)(Math.random()*3-1);
     myY = myY + (int)(Math.random()*3-1);
   }
   void show(){
     fill(255,0,0);
     ellipse(myX,myY,10,10);
   }
 	//lots of java!   
 }    