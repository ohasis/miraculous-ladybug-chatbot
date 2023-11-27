function preftopic = mlbchatbotif(preftopic)
% This function will introduce the chatbot concept.
% The chatbot's name is either Hugo, Louis, or Emma.
% Every topic has been assigned a code, which will be relayed through the preftopic variable.
chatnames = ["Hugo", "Louis", "Emma"];
chatname = chatnames(randi([1,3]));
fprintf('Bonjour! My name is %s and I am a chatbot. I have been created to chat with you about Miraculous: Tales of Ladybug and Chat Noir.\n', chatname);
spectopic = menu('Do you have a preferred topic you would like to chat about?', 'Yes', 'No');

switch spectopic
    case 1
        fprintf('Purr-fect. You can choose from the following options:\n Statistics about the Popularity of the Show (1)\n Characters (2)\n The Love Square (4)\n Episode and Movie Recommendations (5)\n Comic, Fanfiction, and Video Recommendations (6)\n');
        preftopic = input('Which option would you like? Please type its corresponding tag here without parentheses: ');
    case 2
        notopic = menu('Are you new to Miraculous: Tales of Ladybug and Chat Noir?', 'Yes', 'No');
        switch notopic
            case 1
                fprintf('Welcome to the fandom! I will start by giving you some basic information about this show.\n');
                preftopic = 1;
            case 2
                fprintf('Cataclysmic! I believe that I have some discussion topics for you.\n');
                preftopic = randi([1,7]);
        end
end
end