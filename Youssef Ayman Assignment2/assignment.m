clear 
time = input("Enter the time", "s");

flag_am=0;
flag_pm=0;
index_am=0;
index_pm=0;
index_1st_colon=find((time==':') - 1);

   
    if(str2double(time(1:index_1st_colon))<=12)
        
        flag_am=1;
        index_am=length(time)+1;
    elseif(str2double(time(1:index_1st_colon))>12)
        flag_pm=1;
        index_pm=length(time)+1;
    end
 
    
    if(flag_am)
        if(str2double(time(1:index_1st_colon))==00)
           hours=str2double(time(1:index_1st_colon))==12;
           time=[num2str(hours) time(index_1st_colon+1:index_am-1) 'am']
        else
            time = [time 'am'];
        end
    elseif(flag_pm)
        if(str2double(time(1:index_1st_colon))==24)
             hours=str2double(time(1:index_1st_colon))==12;
           time=[num2str(hours) time(index_1st_colon+1:index_pm-1) 'pm']; 
        else
            hours=str2double(time(1:index_1st_colon))-12;
            time=[num2str(hours) time(index_1st_colon+1:index_pm-1) 'pm'];
        end
    end

    