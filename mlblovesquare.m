function OTP = mlblovesquare(character1,character2)
% This function will return the ship name of two differnet characters.
% The given characters must be either Adrien, Marinette, Chat Noir, or
% Ladybug.
% Any other character inputs will invalidate the function.
if (strcmpi(character1,'Adrien') && strcmpi(character2,'Marinette'))
    OTP = 'Adriennette';
elseif (strcmpi(character1,'Chat Noir') && strcmpi(character2,'Ladybug'))
    OTP = 'Ladynoir';
elseif (strcmpi(character1,'Chat Noir') && strcmpi(character2,'Marinette'))
    OTP = 'Marichat';
elseif (strcmpi(character1,'Adrien') && strcmpi(character2,'Ladybug'))
    OTP = 'Ladrien';
else
    OTP = 'invalid';
end
fprintf('Your OTP is %s.\n', OTP);
end