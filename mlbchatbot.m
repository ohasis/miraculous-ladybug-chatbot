% Create a script that will ask for input names and determine whether they
% will be voted out based on matrix characteristics.
% Survival skills (willingness to kill animals, ability to stomach disgusting food, etc.), leadership and friendliness.
% If you input an unrecognizable character name, it will randomly generate characteristics for the character.
% If time permits, add another tribe.

% This following script is for a Miraculous: Tales of Ladybug and Chat Noir chatbot.
% Chatbot introductions and program descriptions. (0)
preftopic = 0;
OTP = '';
if preftopic == 0
    preftopic = mlbchatbotif(preftopic);
end

% Information regarding the show and its popularity. (1)
% Cycle through the dates arrays and rearrange them.
if preftopic == 1
    mlbgoogletrends;
end

% Discussions involving the characters themselves. (2)
if preftopic == 2
    character_name = '';
    mlbcharacterdiscuss(character_name);
end

% Discussions involving the superheroes, kwamis, and Hawkmoth. (3)
if preftopic == 3
    superhero_name = ["Ladybug/Mister Bug, Tikki", "Chat Noir/Lady Noire, Plagg", "Rena Rouge/Rena Furtive, Trixx", "Carapace, Wayzz", "Viperion/Aspik, Sass", "Multimouse/Polymouse, Mullo", "Queen Bee/Vesperia, Pollen", "King Monkey, Xuppu", "Ryuko, Longg", "Pegasus, Kaalki", "Bunnyx, Fluff", "Pigella, Daizzi", "Mayura, Duusuu", "Hawkmoth, Nooroo"];
    mlbsuperherodiscuss(superhero_name);
end

% Discussions involving the love square. (4)
if preftopic == 4
    fprintf('Marinette Dupain-Cheng is in love with Adrien Agreste, while Adrien Agreste is in love with Ladybug: his partner and Marinette''s secret identity.\nBecause neither Adrien nor Marinette knows their love interest''s identity, this phenomena has resulted in the creation of a love square.\n');
    character1 = input('Adrien or Chat Noir? ','s');
    character2 = input('Marinette or Ladybug? ','s');
    OTP = mlblovesquare(character1, character2);
    fprintf('OTP stands for one true pairing.\n');
    whyOTP = input('Why do you like this OTP? ','s');
    mlblovesquarediscuss(whyOTP);
end

% Episode and movie recommendations. (5)
if preftopic == 5
    fprintf('You will now select the parameters for your episode or movie recommendation. OTP stands for one true pairing.\n');
    if ~isempty(OTP)
        prefOTP = menu('Please select your preferred OTP.', 'I would rather select a specifc season.', 'Adriennette', 'Ladynoir', 'Marichat', 'Ladrien');
    else
        prefOTP = OTP;
    end
    category = menu('Please select your preferred category.', 'I have already selected my preferred OTP.', 'Season 1', 'Season 2', 'Season 3', 'Season 4', 'Movie', 'Random');
    mlbepmov(prefOTP, category);
    fprintf('You can watch Miraculous: Tales of Ladybug and Chat Noir on Netflix, Disney+, Disney Channel, and Soap2Day.To.\n');
end

% Comic, fanfiction, and video recommendations. (6)
if preftopic == 6
    fprintf('You will now select the parameters for your comic, fanfiction, or video recommendation. OTP stands for one true pairing.\n');
    prefOTP = menu('Please select your preferred OTP.', 'I would rather spelect a specific format.', 'Adriennette', 'Ladynoir', 'Marichat', 'Ladrien');
    format = menu('Please select your preferred format.', 'I have already selected my preferred OTP.', 'Comic', 'Fanfiction', 'Video');
    fprintf('You should check out the following recommendation:');
    comfanvid = mlbcomfanvid(prefOTP,format);
end