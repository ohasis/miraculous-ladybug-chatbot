function mlbsuperherodiscuss(superhero_name)
% Use the token function to pair kwamis with their owners. In the case of doubles, list the kwamis twice.
[superheros, kwamis] = strtok(superhero_name, ',');
kwamis = strrep(kwamis,', ','');
end