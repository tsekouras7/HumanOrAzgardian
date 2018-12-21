//Askisi•Gia N plithos anthropon i exogiinon.
// Arxika o xristis tha epilegei an einai apo tin Gi i apo tin Azgard.
// Stin synexeia tha eisagei to onoma kai i ilikia tou.
// Telos tha emfanizei poios (to onoma) einai o megalyteros
// kai poios o mikroteros se ilikia anthropos
// kai poios einai mikroteros/megalyteros se ilikia exogiinos.
//px
//Gi
//Mikroteros: THanasis 5
// Megalyteros: Kostas 99
//Azgard
//Mikroteros: Fhaleen-456
//Megalyteros: Krashnak654
//•Na elegxontai oi times ilikias:
//–An einai exogiinos den exei periorismo giati zei se astrika xronia (oti na nai)
// kai mporei na balei oti timi thelei, arnitiki i thetiki
//–Eno an anthropos mporei na dosei apo 1 –100 xronia

program HumanOrAzgardianProgram;

var

h_Name_Max,h_Name_Min,azg_Name_Max,azg_Name_Min,h_Name,azg_Name,stolisma:string;

h_Age_Max,h_Age_Min,azg_Age_Max,azg_Age_Min,h_Counter,azg_Counter,n,i,h_Age,azg_Age,race:integer;

age_Check,race_Check:boolean;

begin

stolisma:='  -=O#O=- -=O#O=- -=O#O=- -=O#O=- -=O#O=- -=O#O=- -=O#O=-  ';

     n:=3; //synolo atomwn pou zhtame apo ton xrhsth p.x. n atoma eite human eite azgardian

     h_Counter:=0; // human counter dhladh posoi human

     azg_Counter:=0; // azgardian counter dhaldh posoi azgardians

     //afth h for kanei mia loupa (epanalhpsh) opou mesa zhtame ni fores na mas dwsei input xrhsths
     for i:=1 to n do
     begin
           writeln(stolisma);   //stolizoume to output mas gia na einai eyanagnwsto
          // h parakatw writeln leei se poio atomo briskomaste apo to synolo pou zhtaei to programma kai meta zhtaei gia human na dwsei 1 kai gia azg. na dwsei 2
          // me to i,'/',n emfanizoume mprosta apo to mynhma se poio input briskomaste,meta plagioka8etos kai meta posa zhtame apo to xrhsth na dwsei synolika
          writeln(i,'/',n);
          //analytika: i = se poio input eimaste
          //n = synolo atomwn pou 8eloume apo to xrhsth
            
          // me to #13#10 phgainei sthn epomenh grammh opote to For human input 1 8a emfanistei apo katw apo to i/n


          writeln('For human input 1,');
          writeln('For azgardian input 2 and press enter:');

          //input apo to xrhsth
          readln(race);

          //me afto to writeln dhmiourgeis mia kainh grammh opote writeln kai periexomeno tipota
          writeln('');

          race_Check:=false;  //prin treksei o elegxos to flag ginete lan8asmeno gia na treksei prwth fora h epomenh while

          while race_Check=false do  // se afthn edw thn while elegxoume to flag pou mas leei ean mas exei dwsei swsto race
          begin
               if ((race=1) or (race=2)) then // elegxoume ean mas exei dwsei o xrhsteis to swsto input dhladh 1 h 2

               race_Check:=true  //ama to condition (oro8etish) einai swstos (dhdladh o xrhsths edwse 1 h 2) tote to flag ginete true

               else  //wrong race input

               begin
                    writeln(stolisma);   //stolizoume to output mas gia na einai eyanagnwsto
                    writeln('Wrong input, please follow instructions:',#13#10,'For human input 1,',#13#10,'For azgardian input 2 and press enter:');
                    readln(race);
                    writeln('');
               end;  //if race is 1 or 2
          end; //while race input Check is false
          // if human
          if race=1 then 
          begin
              writeln(stolisma);   //stolizoume to output mas gia na einai eyanagnwsto
              writeln('give human ',h_Counter,' name:');
              readln(h_Name);
              writeln('');
              writeln(stolisma);   //stolizoume to output mas gia na einai eyanagnwsto
              writeln('give age of human ',h_Name,':');
              readln(h_Age);
              writeln('');
              age_Check:=false; // 8etoume to flag elegxou swsths hlikias se la8os gia na treksei mia fora h parakatw while
              while age_Check=false do //oso den mas exei dwsei swsth hlikia gia ton human trexei ksana to programa
              begin
                    if ((h_Age>0) and (h_Age<=100))
                    then
                    age_Check:=true // ean swsth hlikia input tote to flag ginete swsto etsi wste na bgei apo thn while
                    else // wrong human age input
                    begin
                         writeln(stolisma);   //stolizoume to output mas gia na einai eyanagnwsto
                         writeln('your human age input is incorrect,',#13#10,'please input an integer from 1 to 100 and press enter:');
                         readln(h_Age);
                         writeln('');
                    end; //end if human age 1 to 100
              end;//age_Check
              //sthn paraktw if elegxoume ean einai o prwtos human pou eishgage o xrhsths(dhladh an to human counter einai 0), kai dinoume to onoma kai thn hlikia san max kai san min
              if h_Counter=0 then
              begin
                   h_Age_Min:=h_Age;
                   h_Name_Min:=h_Name;
                   h_Age_Max:=h_Age;
                   h_Name_Max:=h_Name;
              end // end if h_Counter is 0
              else // else if h_Counter not 0
              begin
                   if h_Age<h_Age_Min then
                   begin
                           h_Age_Min:=h_Age;
                           h_Name_Min:=h_Name;
                   end
                   else if h_Age>h_Age_Max then
                   begin
                              h_Age_Max:=h_Age;
                              h_Name_Max:=h_Name;
                   end;
                   h_Counter:=h_Counter+1
              end //end if  h_counter

         end //end if human
         else //else if azgardian
         begin
              writeln(stolisma);   //stolizoume to output mas gia na einai eyanagnwsto
              writeln('give azgardian ',azg_Counter,' name:');
              readln(azg_Name);
              writeln('');
              writeln(stolisma);   //stolizoume to output mas gia na einai eyanagnwsto
              writeln('give age of azgardian',azg_Name,':');
              readln(azg_Age);
              writeln('');

               // if azgardians are 0 so this is the first azgardian that we get, then set name and age as max and min
              if azg_Counter=0 then
              begin
                   azg_Age_Min:=azg_Age;
                   azg_Name_Min:=azg_Name;
                   azg_Age_Max:=azg_Age;
                   azg_Name_Max:=azg_Name;
              end // end if azg_Counter = 0
              else //if azg_Counter not 0
              begin
                   // if age is lower than min, set name and age as min
                   if azg_Age<azg_Age_Min then
                      begin
                           azg_Age_Min:=azg_Age;
                           azg_Name_Min:=azg_Name;
                      end //end if age lower than min
                      // else if age more than max, set name and age max
                    else if azg_Age>azg_Age_Max then
                         begin
                              azg_Age_Max:=azg_Age;
                              azg_Name_Max:=azg_Name;
                         end;//end if age more than max
              end; //end azg_Counter is 0 or not 0


         end;//end if azgardian
     end;   // i dhladh epanalhpseis input.
     
     // edw einai to output mas
     writeln('  -=O#O=- -=O#O=- -=O#O=- -=O#O=- -=O#O=- -=O#O=- -=O#O=-  ');
     writeln('humans stats:');
     writeln('');
     writeln('oldest human is ',h_Name_Max,', at age ',h_Age_Max);
     writeln('younger human is ',h_Name_Min,', at age ',h_Age_Min);
     writeln('');
     writeln(stolisma);   //stolizoume to output mas gia na einai eyanagnwsto
     writeln('azgardians stats:');
     writeln('');
     writeln('oldest azgardian is ',azg_Name_Max,', at age ',azg_Age_Max);
     writeln('younger human is ',azg_Name_Min,', at age ',azg_Age_Min);
     writeln('');
     writeln(stolisma);   //stolizoume to output mas gia na einai eyanagnwsto
     readln;

end. //end of program
