function mlbgoogletrends
% This function will describe what Miraculous: Tales of Ladybug and Chat Noir is about and provide Google Trends graphs of pertinent topics' popularity.
fprintf('Miraculous: Tales of Ladybug and Chat Noir is a French animated television series starring two teenaged French superheroes who protect Paris from the likes of Hawkmoth. Marinette Dupain-Cheng''s secret identity is Ladybug, which Adrien Agreste''s secret identity is Chat Noir.\n');
fprintf('These two individuals are given their power from kwamis, who live inside magical pieces of jewelry known as Miraculouses. Hawkmoth, Adrien''s father, seeks to attain the miraculouses of Ladybug and Chat Noir. Neither father nor son knows that they are enemies.\n');
fprintf('Marinette is in love with Adrien, while Adrien is in love with Ladybug. Because neither superhero knows their partner''s identity, this phenomena has resulted in the creation of a love square.\n');
fprintf('The following graphs demonstrate the worldwide popularity of each topic on the Google Trend index from 2016 to 2021. 100 is the highest possible index.\n');

% Try converting datetime variables to str and strrep dashes with spaces. 
MLBStats = readtable('MLBStats.csv', "VariableNamingRule", 'modify');
MLBdates = MLBStats{:,1};
MLBindex = MLBStats{:,2};
save('MLBStats.mat', 'MLBdates', 'MLBindex')
load ('MLBStats.mat')

AdrienStats = readtable('AdrienStats.csv', "VariableNamingRule", 'modify');
Adriendates = AdrienStats{:,1};
Adrienindex = AdrienStats{:,2};
save('AdrienStats.mat', 'Adriendates', 'Adrienindex')
load ('AdrienStats.mat')

ChatNoirStats = readtable('ChatNoirStats.csv', "VariableNamingRule", 'modify');
ChatNoirdates = ChatNoirStats{:,1};
ChatNoirindex = ChatNoirStats{:,2};
save('ChatNoirStats.mat', 'ChatNoirdates', 'ChatNoirindex')
load ('ChatNoirStats.mat')

MarinetteStats = readtable('MarinetteStats.csv', "VariableNamingRule", 'modify');
Marinettedates = MarinetteStats{:,1};
Marinetteindex = MarinetteStats{:,2};
save('MarinetteStats.mat', 'Marinettedates', 'Marinetteindex')
load ('MarinetteStats.mat')

LadybugStats = readtable('LadybugStats.csv', "VariableNamingRule", 'modify');
Ladybugdates = LadybugStats{:,1};
Ladybugindex = LadybugStats{:,2};
save('LadybugStats.mat', 'Ladybugdates', 'Ladybugindex')
load ('LadybugStats.mat')

% Graph MLB Stats
plot(MLBdates,MLBindex,'-rs')
subplot(5,1,1)
hold on
xlabel('2016 - 2021')
ylabel('Popularity Index')
title('Miraculous: Tales of Ladybug and Chat Noir''s Search Frequency')
    
% Graph Adrien Stats
plot(Adriendates,Adrienindex,'-bs')
subplot(5,1,2)
hold on
xlabel('2016 - 2021')
ylabel('Popularity Index')
title('Adrien Agreste''s Search Frequency')
    
% Graph Chat Noir Stats
plot(ChatNoirdates,ChatNoirindex,'-gs')
subplot(5,1,3)
hold on
xlabel('2016 - 2021')
ylabel('Popularity Index')
title('Chat Noir''s Search Frequency')
        
% Graph Marinette Stats
plot(Marinettedates,Marinetteindex,'-ks')
subplot(5,1,4)
hold on
xlabel('2016 - 2021')
ylabel('Popularity Index')
title('Marinette Dupain-Cheng''s Search Frequency')
        
% Graph Ladybug Stats
plot(Ladybugdates,Ladybugindex,'-md')
subplot(5,1,5)
hold on
xlabel('2016 - 2021')
ylabel('Popularity Index')
title('Ladybug''s Search Frequency')

fprintf('Since the first episode was released in 2015, Miraculous: Tales of Ladybug and Chat Noir has attained international acclaim. It has been dubbed in more than 20 languages and released in more than 120 countries.\n');
end