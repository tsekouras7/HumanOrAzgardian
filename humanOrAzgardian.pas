program HumanOrAzgardianProgram;
var
hnameMax,hnameMin,anameMax,anameMin,hname,aname:string;
hageMax,hageMin,aageMax,aageMin,hcounter,acounter,n,allcounter,i,hage,aage,race:integer;
ageCheck,raceCheck:boolean;
begin
     n:=3;
     allcounter:=1;
     hcounter:=1;
     acounter:=1;
     for i:=1 to n do
     begin
          raceCheck:=false;
          writeln(allcounter,'/',n,#13#10,'For human input 1,',#13#10,'For azgardian input 2 and press enter:');
          readln(race);
          writeln('');
          while raceCheck=false do
          begin
               if ((race=1) or (race=2)) then
               raceCheck:=true
               else  //wrong race input
               begin
                    writeln('Wrong input, please follow instructions:',#13#10,'For human input 1,',#13#10,'For azgardian input 2 and press enter:');
                    readln(race);
                    writeln('');
               end;  //if race is 1 or 2
          end; //while race input Check is false
          if race=1 then
          begin
              writeln('give human ',hcounter,' name:');
              readln(hname);
              writeln('');
              ageCheck:=false;
              writeln('give age of human ',hname,':');
              readln(hage);
              writeln('');
              while ageCheck=false do
              begin
                    if ((hage>0) and (hage<=100))
                    then
                    ageCheck:=true
                    else // wrong human age input
                    begin
                         writeln('your human age input is incorrect,',#13#10,'please input an integer from 1 to 100 and press enter:');
                         readln(hage);
                         writeln('');
                    end; //if human age 1 to 100
              end;//ageCheck
              if hcounter=1 then
              begin
                   hcounter:=2;
                   hageMin:=hage;
                   hnameMin:=hname;
                   hageMax:=hage;
                   hnameMax:=hname;
              end
              else
              begin
                   if hage<hageMin then
                      begin
                           hageMin:=hage;
                           hnameMin:=hname;
                      end
                    else if hage>hageMax then
                         begin
                              hageMax:=hage;
                              hnameMax:=hname;
                         end;
              end //end hcounter

         end //if human
         else //if azgardian
         begin
                 writeln('give azgardian ',acounter,' name:');
              readln(aname);
              writeln('');
              writeln('give age of azgardian',aname,':');
              readln(aage);
              writeln('');

              if acounter=1 then
              begin
                   acounter:=2;
                   aageMin:=aage;
                   anameMin:=aname;
                   aageMax:=aage;
                   anameMax:=aname;
              end
              else //if acounter not 1
              begin
                   if aage<aageMin then
                      begin
                           aageMin:=aage;
                           anameMin:=aname;
                      end
                    else if aage>aageMax then
                         begin
                              aageMax:=aage;
                              anameMax:=aname;
                         end;
              end; //end acounter


         end;//end ezgardian
                   allcounter:=allcounter+1;
     end;   // i
     writeln('humans stats:');
     writeln('');
     writeln('oldest human is ',hnameMax,', at age ',hageMax);
     writeln('younger human is ',hnameMin,', at age ',hageMin);
     writeln('');
     writeln('azgardians stats:');
     writeln('');
     writeln('oldest azgardian is ',anameMax,', at age ',aageMax);
     writeln('younger human is ',anameMin,', at age ',aageMin);
     readln;

end. //program
