function comfanvid = mlbcomfanvid(prefOTP,format)
% This function will provide either a comic, fanfiction, or video
% recommendation.
% Each cell will be titled based on the case and include the media
% name, creator, format, length (unit), and location.
% Add URL to structures

% Video
She_Mine = struct('Name', 'She''s Mine | Miraculous [Illustrated Audiofic]', 'Creator', 'Lyradaisical', 'Format', 'Video', 'Length_Minutes', 17, 'Location', 'YouTube');
Big_Dance = struct('Name', 'The Big Dance Miraculous Ladybug Comic Dub (part 1)', 'Creator', 'Mi Comic', 'Format', 'Video', 'Length_Minutes', 6, 'Location', 'YouTube');
Unlucky_Charm = struct('Name', 'Unlucky Charm Part 1 Miraculous Ladybug Comic Dub', 'Creator', 'Mi Comic', 'Format', 'Video', 'Length_Minutes', 14, 'Location', 'YouTube');
Out_Sick = struct('Name', '''''Out Sick'''' Miraculous Ladybug Comic Dub (Full Comic)', 'Creator', 'legofan506', 'Format', 'Video', 'Length_Minutes', 56, 'Location', 'YouTube');
Show_Yourself = struct('Name', 'SHOW YOURSELF || Miraculous Ladybug ANIMATIC || Ella Cinders', 'Creator', 'Ella Cinders', 'Format', 'Video', 'Length_Minutes', 5, 'Location', 'YouTube');
Something_Stupid = struct('Name', 'Something Stupid - Animated Music Video - Miraculous Ladybug', 'Creator', 'Star Animations', 'Format', 'Video', 'Length_Minutes', 3, 'Location', 'YouTube');
When_He = struct('Name', '''''When He Sees Me'''' | LadyNoir | Miraculous Ladybug Animatic', 'Creator', 'Kelli M', 'Format', 'Video', 'Length_Minutes', 3, 'Location', 'YouTube');
SDCC_2018 = struct('Name', 'Miraculous Ladybug SDCC 2018 Full Panel', 'Creator', 'unicornhime', 'Format', 'Video', 'Length_Minutes', 55, 'Location', 'YouTube');
Pain_OOC = struct('Name', 'miraculous ladybug except it''s painfully out of context', 'Creator', 'catboy with daddy issues', 'Format', 'Video', 'Length_Minutes', 7, 'Location', 'YouTube');
Best_MLB = struct('Name', 'chat noir/adrien being the best miraculous character for 8 minutes straight', 'Creator', 'Kxzumii ''', 'Format', 'Video', 'Length_Minutes', 8, 'Location', 'YouTube');
SDCC_2017 = struct('Name', 'Miraculous Ladybug SDCC 2017', 'Creator', 'unicornhime', 'Format', 'Video', 'Length_Minutes', 53, 'Location', 'YouTube');

% Fanfiction
% Unit should be words or chapters(?)
Hit_List = struct('Name', 'Chat Noir''s White French Man Hit List for Feminist Purposes', 'Creator', 'peachcitt', 'Format', 'Fanfiction', 'Length_Words', 7811, 'Location', 'Archive of Our Own');
Nothing_Bad = struct('Name', 'Nothing Bad Ever Hapens to Me', 'Creator', 'Untitled No.1', 'Format', 'Fanfiction', 'Length_Parts', 9, 'Location', 'Tumblr');
Lock_and_Key = struct('Name', 'Under Lock and Key', 'Creator', 'edendaphne', 'Format', 'Fanfiction', 'Length_Hours', 3, 'Location', 'Wattpad');
Living_Agreste = struct('Name', 'Living with Agreste', 'Creator', 'Savaboo', 'Format', 'Fanfiction', 'Length_Hours', 13, 'Location', 'Wattpad');

% Comic
% Unit should be panels or chapter
First_Date = struct('Name', 'Sunny with a Chance/First Date', 'Creator', 'Nancy Sauria', 'Format', 'Comic', 'Length_Parts', 3, 'Location', 'Tumblr');
Out_of_Bag = struct('Name', 'The Ladybug''s Out of the Bag', 'Creator', 'The Professional Redhead', 'Format', 'Comic', 'Length_Parts', 57, 'Location', 'Tumblr');

switch prefOTP
    case 1 % Prefer to select a format.
        fprintf(' \n');
    case 2 % Adriennette
        Adriennette = {She_Mine, Big_Dance, Unlucky_Charm, Out_Sick, When_He, Nothing_Bad, Lock_and_Key, Living_Agreste, First_Date, Out_of_Bag};
        comfanvid = Adriennette{randi([1,10])};
    case 3 % Ladynoir
        Ladynoir = {Unlucky_Charm, Out_Sick, When_He, Lock_and_Key, Living_Agreste, Out_of_Bag};
        comfanvid = Ladynoir{randi([1,6])};
    case 4 % Marichat
        Marichat = {Out_Sick, Something_Stupid, Nothing_Bad, Living_Agreste};
        comfanvid = Marichat{randi([1,4])};
    case 5 % Ladrien
        Ladrien = {Out_Sick, Lock_and_Key, Living_Agreste};
        comfanvid = Ladrien{randi([1,3])};
end

switch format
    case 1 % Prefer to select an OTP.
        fprintf(' \n');
    case 2 % Comic
        comic = {First_Date, Out_of_Bag};
        comfanvid = comic{randi([1,2])};
    case 3 % Fanfiction
        fanfiction = {Hit_List, Nothing_Bad, Lock_and_Key, Living_Agreste};
        comfanvid = fanfiction{randi([1,4])};
    case 4 % Video
        video = {She_Mine, Big_Dance, Unlucky_Charm, Out_Sick, Show_Yourself, Something_Stupid, When_He, SDCC_2018, Pain_OOC, Best_MLB, SDCC_2017};
        comfanvid = video{randi([1,11])};
end
disp(comfanvid)
end