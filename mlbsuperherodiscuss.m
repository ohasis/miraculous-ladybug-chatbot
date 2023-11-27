% Discussions involving the superheroes, kwamis, and Hawkmoth. (6)
% if preftopic == 3
%     superhero_name = ["Ladybug/Mister Bug, Tikki", "Chat Noir/Lady Noire, Plagg", "Rena Rouge/Rena Furtive, Trixx", "Carapace, Wayzz", "Viperion/Aspik, Sass", "Multimouse/Polymouse, Mullo", "Queen Bee/Vesperia, Pollen", "King Monkey, Xuppu", "Ryuko, Longg", "Pegasus, Kaalki", "Bunnyx, Fluff", "Pigella, Daizzi", "Mayura, Duusuu", "Hawkmoth, Nooroo"];
%     mlbsuperherodiscuss(superhero_name);
% end

function mlbsuperherodiscuss(superhero_name)
% Use the token function to pair kwamis with their owners. In the case of doubles, list the kwamis twice.
[superheros, kwamis] = strtok(superhero_name, ',');
kwamis = strrep(kwamis,', ','');
end
