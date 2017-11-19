

function[output] = Priming_Task(mygroup, unique_id)

% mygroup is either 1 or 2; initially designed for only 2 groups of priming
% unique_id should be a double digit number that is unique

% clean before start
clearvars -except mygroup unique_id

screenNum=0;
[window, rect] = Screen('OpenWindow', screenNum, 1);
[X,Y] = RectCenter(rect);



mykeys = {};
myRT = [];
% We get hour matrix with zeros
output = num2cell(zeros(4));

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




if mygroup == 1

% Load all the images for the groups

    ima=imread('doctor.jpg');
    imb=imread('clock.jpg');
    imc=imread('beach.jpg');
    imd=imread('bonfire.jpg');    

    %% Trial 1 %%   
    
% Show image
Screen('PutImage', window, ima); % put image on screen
Screen('Flip',window); % now visible on screen

WaitSecs(1)


% Cross

Screen('FillRect', window, [192,192,192])
Screen('FillRect', window, [255,255,255], FixCross');
Screen('Flip', window);

% waiting 1 sec
WaitSecs(1)

% Get Answer

Screen('DrawText', window, '_ U R S E ', X-50, Y, [255, 0, 0, 255]);
    % Show computed text bounding box:
    Screen('Flip',window);

[A , B] = waitTill(20, 1);

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
Screen('PutImage', window, imb); % put image on screen
Screen('Flip',window); % now visible on screen

WaitSecs(1)


% Cross

Screen('FillRect', window, [192,192,192])
Screen('FillRect', window, [255,255,255], FixCross');
Screen('Flip', window);

% waiting 1 sec
WaitSecs(1)

% Get Answer

Screen('DrawText', window, '_ O U R ', X-50, Y, [255, 0, 0, 255]);
Screen('Flip',window);

% Get keys and reaction times

[A , B] = waitTill(20, 1);

    % Save in correct places    
mykeys(2,:) = A; 
myRT(2,:) = B;


        %% Trial 3 %%   


        
% Cross

Screen('FillRect', window, [192,192,192])
Screen('FillRect', window, [255,255,255], FixCross');
Screen('Flip', window);

WaitSecs(1)
         
% Show image
Screen('PutImage', window, imc); % put image on screen
Screen('Flip',window); % now visible on screen

WaitSecs(1)


% Cross

Screen('FillRect', window, [192,192,192])
Screen('FillRect', window, [255,255,255], FixCross');
Screen('Flip', window);

% waiting 1 sec
WaitSecs(1)

% Get Answer

Screen('DrawText', window, '_ O O L ', X-50, Y, [255, 0, 0, 255]);
Screen('Flip',window);

% Get keys and reaction times

[A , B] = waitTill(20, 1);

    % Save in correct places    
mykeys(3,:) = A; 
myRT(3, :) = B;


        %% Trial 4 %%   


        
% Cross

Screen('FillRect', window, [192,192,192])
Screen('FillRect', window, [255,255,255], FixCross');
Screen('Flip', window);

WaitSecs(1)
         
% Show image
Screen('PutImage', window, imd); % put image on screen
Screen('Flip',window); % now visible on screen

WaitSecs(1)


% Cross

Screen('FillRect', window, [192,192,192])
Screen('FillRect', window, [255,255,255], FixCross');
Screen('Flip', window);

% waiting 1 sec
WaitSecs(1)

% Get Answer

Screen('DrawText', window, '_ E A T ', X-50, Y, [255, 0, 0, 255]);
Screen('Flip',window);

% Get keys and reaction times

[A , B] = waitTill(20, 1);

    % Save in correct places    
mykeys(4, :) = A; 
myRT(4, :) = B;

%%%%%%%%%%%%%%%% TEST IS OVER, GROUP ONE COMPLETE %%%%%%%%%%%%


elseif mygroup == 2

 %% Load the images   
    % 2 is wallet, ...    
    ima=imread('wallet.jpg');
    imb=imread('fruit.jpg');
    imc=imread('bike.jpg');
    imd=imread('knife.jpg');
    
     %% Trial 1 %%   
    
% Show image
Screen('PutImage', window, ima); % put image on screen
Screen('Flip',window); % now visible on screen

WaitSecs(1)


% Cross

Screen('FillRect', window, [192,192,192])
Screen('FillRect', window, [255,255,255], FixCross');
Screen('Flip', window);

% waiting 1 sec
WaitSecs(1)

% Get Answer

Screen('DrawText', window, '_ U R S E ', X-50, Y, [255, 0, 0, 255]);
    % Show computed text bounding box:
    Screen('Flip',window);

[A , B] = waitTill(20, 1);

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
Screen('PutImage', window, imb); % put image on screen
Screen('Flip',window); % now visible on screen

WaitSecs(1)


% Cross

Screen('FillRect', window, [192,192,192])
Screen('FillRect', window, [255,255,255], FixCross');
Screen('Flip', window);

% waiting 1 sec
WaitSecs(1)

% Get Answer

Screen('DrawText', window, '_ O U R ', X-50, Y, [255, 0, 0, 255]);
Screen('Flip',window);

% Get keys and reaction times

[A , B] = waitTill(20, 1);

    % Save in correct places    
mykeys(2,:) = A; 
myRT(2,:) = B;


        %% Trial 3 %%   


        
% Cross

Screen('FillRect', window, [192,192,192])
Screen('FillRect', window, [255,255,255], FixCross');
Screen('Flip', window);

WaitSecs(1)
         
% Show image
Screen('PutImage', window, imc); % put image on screen
Screen('Flip',window); % now visible on screen

WaitSecs(1)


% Cross

Screen('FillRect', window, [192,192,192])
Screen('FillRect', window, [255,255,255], FixCross');
Screen('Flip', window);

% waiting 1 sec
WaitSecs(1)

% Get Answer

Screen('DrawText', window, '_ O O L ', X-50, Y, [255, 0, 0, 255]);
Screen('Flip',window);

% Get keys and reaction times

[A , B] = waitTill(20, 1);

    % Save in correct places    
mykeys(3,:) = A; 
myRT(3, :) = B;


        %% Trial 4 %%   


        
% Cross

Screen('FillRect', window, [192,192,192])
Screen('FillRect', window, [255,255,255], FixCross');
Screen('Flip', window);

WaitSecs(1)
         
% Show image
Screen('PutImage', window, imd); % put image on screen
Screen('Flip',window); % now visible on screen

WaitSecs(1)


% Cross

Screen('FillRect', window, [192,192,192])
Screen('FillRect', window, [255,255,255], FixCross');
Screen('Flip', window);

% waiting 1 sec
WaitSecs(1)

% Get Answer

Screen('DrawText', window, '_ E A T ', X-50, Y, [255, 0, 0, 255]);
Screen('Flip',window);

% Get keys and reaction times

[A , B] = waitTill(20, 1);

    % Save in correct places    
mykeys(4, :) = A; 
myRT(4, :) = B;   
    
    
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

finalPath = strcat(rootPath, '\output\', num2str(unique_id),'_', 'priming.csv');

writetable(outputTable, finalPath) 


%%%%%% End the test %%%%%

% Get Answer

Screen('DrawText', window, 'Thank You! Press any key to escape', X-50, Y, [255, 0, 0, 255]);
Screen('Flip',window);
    KbStrokeWait;

  
 
 
sca
end


