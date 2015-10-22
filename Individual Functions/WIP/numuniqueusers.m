function numuniqueusers()


[outarr,fo] = getunique();
printunique(outarr,fo);
uniquearr = unique(outarr);
uniqueusers = size(uniquearr,1);
disp(['The number of unique users is ' num2str(uniqueusers)])

disp('~~~ Users in a given group ~~~')
prompt = 'What is the usergroup you want? (ALL CAPS): ';
userarray=[];
usergroup = input(prompt);
for i = 1:size(outarr)
    if strfind(outarr{i,1},usergroup)
        userarray{end+1,1} = outarr{i,1};
    end
end

uniquecolor = unique(userarray);
disp(['The number of ', usergroup, ' is: ', num2str(size(uniquecolor,1))])



disp('~~~ Trials for a given user ~~~')
prompt = 'What user are you requesting? Type skip (with single quotes) to skip: ';
user = input(prompt);
if user ~= 'skip'
    IndexUser = strfind(outarr, user);
    Index = find(not(cellfun('isempty', IndexUser)));
    disp(['User ', user, ' has ', num2str(size(Index,1)),' trials.'])
end


%% To be added later -- usergroup trials

% disp('~~~ Trials for a given usergroup ~~~')
% prompt = 'What is the usergroup (color with single quotes)? ';
% usergroup = input(prompt);
% 
% 
%     IndexUser = strfind(outarr, user);
%     Index = find(not(cellfun('isempty', IndexUser)));
%     disp(['User ', user, ' has ', num2str(size(Index,1)),' trials.'])
% 
% 





        



end



