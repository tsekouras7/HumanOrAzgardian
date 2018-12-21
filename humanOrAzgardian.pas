program HumanOrAzgardianProgram;

var

h_Name_Max,h_Name_Min,azg_Name_Max,azg_Name_Min,h_Name,azg_Name,stolisma:string;

h_Age_Max,h_Age_Min,azg_Age_Max,azg_Age_Min,h_Counter,azg_Counter,n,i,h_Age,azg_Age,race:integer;

age_Check,race_Check:boolean;

begin

stolisma:='  -=O#O=- -=O#O=- -=O#O=- -=O#O=- -=O#O=- -=O#O=- -=O#O=-  ';

     n:=3; //synolo atomwn pou zhtame apo ton xrhsth p.x. n atoma eite human eite azgardian

     h_Counter:=1; // human counter dhladh posoi human

     azg_Counter:=1; // azgardian counter dhaldh posoi azgardians

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
              age_Check:=false;
              while age_Check=false do
              begin
                    if ((h_Age>0) and (h_Age<=100))
                    then
                    age_Check:=true
                    else // wrong human age input
                    begin
                         writeln(stolisma);   //stolizoume to output mas gia na einai eyanagnwsto
                         writeln('your human age input is incorrect,',#13#10,'please input an integer from 1 to 100 and press enter:');
                         readln(h_Age);
                         writeln('');
                    end; //if human age 1 to 100
              end;//age_Check
              if h_Counter=1 then
              begin
                   h_Counter:=2;
                   h_Age_Min:=h_Age;
                   h_Name_Min:=h_Name;
                   h_Age_Max:=h_Age;
                   h_Name_Max:=h_Name;
              end
              else
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
              end //end h_counter

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

              if azg_Counter=1 then
              begin
                   azg_Counter:=2;
                   azg_Age_Min:=azg_Age;
                   azg_Name_Min:=azg_Name;
                   azg_Age_Max:=azg_Age;
                   azg_Name_Max:=azg_Name;
              end
              else //if azg_Counter not 1
              begin
                   if azg_Age<azg_Age_Min then
                      begin
                           azg_Age_Min:=azg_Age;
                           azg_Name_Min:=azg_Name;
                      end
                    else if azg_Age>azg_Age_Max then
                         begin
                              azg_Age_Max:=azg_Age;
                              azg_Name_Max:=azg_Name;
                         end;
              end; //end azg_Counter


         end;//end if azgardian
     end;   // i
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

end. //program
