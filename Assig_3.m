clc
clear all
                                                        %%%%% Not complete
                                                        %%%ش دة assihme

%% Name: Omar Ahmed
%% ID : 2000371
%% The i/p take from user 
time = input(" please enter the time to be coverted  ","s");

%% Variables
flag_am = 0;
index_am = 0;
 flag_pm = 0;
index_pm = 0;
index_1st_colon = find(time== ':',1)-1;
hours = 0;
%% To know if it AM or PM
for i = 1:length(time)
    if ( time(i) == 'a' || time(i)== 'A'  ) %% it mean am
      
        flag_am = 1;
        index_am = i-1;
    elseif ( time(i) == 'p' || time(i)== 'P')  %% it mean pm
        
        flag_pm = 1;
        index_pm = i-1;
    end
 end
    %% Main Code
if(flag_am) %% that it mean the time is Am 
   if(time(1:index_1st_colon == '12')) %% clock =12
      time_conv = ['00' time(index_1st_colon +1 :index_am  ) ] ; 

   else 
     time_conv =time (1:index_am); 
   end
   
elseif(flag_pm)%% that it mean the time is Pm
    if(time(1:index_1st_colon == '12')) %% clock =12
        time_conv =time (1:index_pm);
    else 
      hours = str2double( time(1:index_1st_colon)) -    str2double('0') +12 ;
      time_conv = [num2str(hours) time(index_1st_colon +1 :index_pm) ];
        
    end  
        
        
end    

   time_conv 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
