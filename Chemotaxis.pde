 //declare bacteria variables here 
 Bacteria[] aLot;
 void setup()   
 {     
   size(500,500);
   aLot = new Bacteria[50];
   for(int i=0; i<aLot.length; i++){
     aLot[i] = new Bacteria();
   }
   
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
   background(150);
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
     if(mouseX > myX){
         myX = myX + (int)(Math.random()*7-1);
       }
       else if(mouseX < myX){
         myX = myX - (int)(Math.random()*7-1);
       }
     if(mouseY > myY){
        myY = myY + (int)(Math.random()*7-1);
      }
        else if(mouseY < myY){
          myY = myY - (int)(Math.random()*7-1);
        }
   }
   void show(){
     fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
     ellipse(myX,myY,10,10);
     fill(0,255,0);
     ellipse(mouseX,mouseY,20,20);
   }
 	//lots of java!   
 }    