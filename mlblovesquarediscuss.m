function mlblovesquarediscuss(whyOTP)
% This function detects certain worlds in a user's response to the question
% "Why do you like your OTP?" and prints appropriate responses.
if contains((whyOTP),'Adrien')
    fprintf('According to Thomas Astruc, the creator of the show, Adrien is perfect, but because the world is flawed, he is extremely naïve.\n');
    fprintf('If you check the Instagram account @AdrienAgresteBrand, you will see that Adrien posted a photo of himself on September 3 wearing the scarf that Marinette made for him. This has led to speculation that his birthday is September 2.\n');
end
if contains((whyOTP),'Marinette')
    fprintf('Marinette has revealed that she might be interested in Chat Noir if not for Adrien.\n');
end
if contains((whyOTP),'Chat Noir')
    fprintf('Chat Noir in French means black cat. Chat Blanc, the akumatized version of Chat Noir, means white cat in French.\n');
end
if contains((whyOTP),'Ladybug')
    fprintf('Ladybug remains the only Miraculous holder to have successfully wielded more than two Miraculouses simultaneously.\n');
end
fprintf('Miraculous! It is incredible to know that Ladybug and Chat Noir can count you as one of their fans!\n');
end