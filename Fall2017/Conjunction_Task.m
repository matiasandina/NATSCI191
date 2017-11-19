

function[output] = Conjunction_Task(mygroup, unique_id)

% mygroup is either 1 or 2; initially designed for only 2 groups
% In this task, groups will see the same but the presentation order is
% reversed
% unique_id should be a digit number that is unique
% currently, unique_id is not being tested for anything


%% Caution, the order of the trials will be different but the rows of the output are going to assume that the order was the same as Group 1

% clean before start
clearvars -except mygroup unique_id

screenNum=0;
[window, rect] = Screen('OpenWindow', screenNum, 1);
[X,Y] = RectCenter(rect);



mykeys = {};
myRT = [];
% We get hour matrix with zeros
output = num2cell(zeros(2));

output(:,1) = {unique_id};
output(:,2) = num2cell(mygroup);


Screen('DrawText', window, ' Hit any key to continue.', X-200, Y, [255, 0, 0, 255]);
    Screen('Flip',window);
    KbStrokeWait;


    
    
%% Start Trial
    

FixCross = [X-1,Y-40,X+1,Y+40;X-40,Y-1,X+40,Y+1];
Screen('FillRect', window, [192,192,192])
Screen('FillRect', window, [255,255,255], FixCross');
Screen('Flip', window);

% waiting 1 sec
WaitSecs(1)


% Load problems into strings

Linda = imread('Linda.jpg');
Probs = imread('Cards.jpg');


if mygroup == 1

% Order will be Linda Problem, Federer Problem, Probs Problem  

    %% Trial 1 %%   


% Show image
Screen('PutImage', window, Linda); % put image on screen
Screen('Flip',window); % now visible on screen

% Get Answer
[A , B] = waitTill(200, 1);

% A will be contaminated with symbols it's from the keyboard (e.g, 2 will be '2@')
% we clean it by keeping just the numbers using regular expressions

A = regexp(A,'\d*','Match');


    % Save in correct places    
mykeys(1,:) = A; 
myRT(1,:) = B;




        %% Trial 2 %%   
       
            
% Cross

Screen('FillRect', window, [192,192,192])
Screen('FillRect', window, [255,255,255], FixCross');
Screen('Flip', window);

WaitSecs(1)
         
% Show image
Screen('PutImage', window, Probs); % put image on screen
Screen('Flip',window); % now visible on screen

% Get Answer

[A , B] = waitTill(200, 1);

% A will be contaminated with symbols it's from the keyboard (e.g, 2 will be '2@')
% we clean it by keeping just the numbers using regular expressions

A = regexp(A,'\d*','Match');



    % Save in correct places    
mykeys(2,:) = A; 
myRT(2, :) = B;


 %%%%%%%%%%%%%%%% TEST IS OVER, GROUP ONE COMPLETE %%%%%%%%%%%%


elseif mygroup == 2

   
     %% Trial 1 %%   
    
% Cross

Screen('FillRect', window, [192,192,192])
Screen('FillRect', window, [255,255,255], FixCross');
Screen('Flip', window);

WaitSecs(1)
         
% Show image
Screen('PutImage', window, Probs); % put image on screen
Screen('Flip',window); % now visible on screen

% Get Answer

[A , B] = waitTill(200, 1);

% A will be contaminated with symbols it's from the keyboard (e.g, 2 will be '2@')
% we clean it by keeping just the numbers using regular expressions

A = regexp(A,'\d*','Match');


    % Save in correct places    
mykeys(2,:) = A; 
myRT(2, :) = B;




        %% Trial 2 %%   

% Cross

Screen('FillRect', window, [192,192,192])
Screen('FillRect', window, [255,255,255], FixCross');
Screen('Flip', window);

WaitSecs(1)        
        
% Show image
Screen('PutImage', window, Linda); % put image on screen
Screen('Flip',window); % now visible on screen

% Get Answer
[A , B] = waitTill(200, 1);

% A will be contaminated with symbols it's from the keyboard (e.g, 2 will be '2@')
% we clean it by keeping just the numbers using regular expressions

A = regexp(A,'\d*','Match');


    % Save in correct places    
mykeys(1,:) = A; 
myRT(1,:) = B;
        
    
    
else error('group has to be either 1 or 2 for this function')

end
   

 % Append output columns   
 output(:,3) = mykeys;
 output(:,4) = num2cell(myRT);
 
 
 %% Write output to file

% Convert to table for analysis purposes

outputTable = cell2table(output);
outputTable.Properties.VariableNames = {'unique_id' 'group' 'keys' 'RT'};

% get cd

rootPath = cd;

finalPath = strcat(rootPath, '\output\', num2str(unique_id),'_', 'conjunction.csv');

writetable(outputTable, finalPath) 


%%%%%% End the test %%%%%

% Get Answer

Screen('DrawText', window, 'Thank You! Press any key to escape', X-50, Y, [255, 0, 0, 255]);
Screen('Flip',window);
    KbStrokeWait;

  
 
 
sca
end


