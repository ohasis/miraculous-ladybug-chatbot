function mlbepmov(prefOTP, category)
% This function will take the given variables of yourOTP and season to
% establish parameters from which to make a movie or episode selection.
% Every episode that has aired in the United States is listed here and the
% order is based on the French production schedule.
season_one = ["Stormy Weather", "The Evillustrator", "Lady Wifi", "Princess Fragrence", "Dark Cupid", "Mr. Pigeon", "Pixelmator", "Copycat", "The Bubbler", "Simon Says", "Rogercop", "Gamer", "Animan", "Darkblade", "The Pharaoh", "Timebreaker", "Horrificator", "The Puppeteer", "The Mime", "Guitar Villain", "Reflekta", "Ladybug & Chat Noir (Origins - Part 1)", "Stoneheart (Origins - Part 2)", "Antibug", "Kung Food", "Volpina"];
season_two = ["The Collector", "Prime Queen", "Glaciator", "Despair Bear", "Troublemaker", "Gigantitan", "Riposte", "Befana", "Frightningale", "Gorizilla", "Robustus", "Sapotis", "The Dark Owl", "Syren", "Zombizou", "Captain Hardrock", "Frozer", "Style Queen (Queen's Battle - Part 1)", "Queen Wasp (Queen's Battle - Part 2)", "Reverser", "Anansi", "Malediktator", "Sandboy", "Catalyst (Heroes' Day - Part1)", "Mayura (Heroes' Day - Part 2)", "Santa Claws"];
season_three = ["Chameleon", "Animaestro", "Bakerix", "Backwarder", "Reflekdoll", "Weredad", "Silencer", "Onichan", "Miraculer", "Oblivio", "Desperada", "Christmaster", "Startrain", "Kwamibuster", "Gamer 2.0", "Stormy Weather 2", "Ikari Gozen", "Timetagger", "Party Crasher", "The Puppeteer 2", "Chat Blanc", "Félix", "Ladybug", "Heart Hunter (The Battle of the Miraculous - Part 1)", "Miracle Queen (The Battle of the Miraculous - Part 2)"];
season_four = ["Truth", "Lies", "Gang of Secrets", "Mr. Pigeon 72", "Furious Fu", "Sole Crusher", "Queen Banana", "Mega Leech", "Guiltrip", "Optigami", "Sentibubbler", "Rocketear", "Wishmaker"];
NY_special = ["Miraculous World: New York - United Heroez"];
SH_special = ["Miraculous World: Shanghai - The Legend of the Lady Dragon"];
series_list = [season_one, season_two, SH_special, season_three, NY_special, season_four];

AM_selections = [season_one(12), season_one(13), season_one(17), season_one(23), season_one(25), season_two(4), season_two(9), season_two(10), season_two(25), season_three(10), season_three(13), season_three(21), season_four(3), season_four(7), NY_special, SH_special];
LC_selections = [season_one(3), season_one(5), season_one(8), season_one(22), season_two(2), season_two(3), season_two(9), season_three(10), season_four(1), season_four(2), NY_special, SH_special];
MC_selections = [season_one(2), season_one(12), season_two(3), season_two(8), season_two(9), season_three(6), season_three(10), season_three(21)];
LA_selections = [season_one(10), season_one(15), season_two(9), season_two(10), season_two(16), season_three(10)];

% Create a cell matrix for one for each season: one column for title, one column for season, and one column for episode number.
switch prefOTP
    case 1 % Prefer to select a category.
        fprintf('Miraculous Ladybug!\n');
    case 2 % Adriennette
        AMrand = randi([1,length(AM_selections)]);
        AMpick = AM_selections(AMrand);
        for i = 1:length(season_one) % Season 1
            if season_one(i) == AMpick
                fprintf('You should watch %s, which is season 1 episode %d.\n', AMpick, i);
            end
        end
        for i = 1:length(season_two) % Season 2
            if season_two(i) == AMpick
                fprintf('You should watch %s, which is season 2 episode %d.\n', AMpick, i);
            end
        end
        for i = 1:length(season_three) % Season 3
            if season_three(i) == AMpick
                fprintf('You should watch %s, which is season 3 episode %d.\n', AMpick, i);
            end
        end
        for i = 1:length(season_four) % Season 4
            if season_four(i) == AMpick
                fprintf('You should watch %s, which is season 4 episode %d.\n', AMpick, i);
            end
        end
        if AMpick == NY_special || AMpick == SH_special % Movie
            fprintf('You should watch %s.\n', AMpick);
        end
    case 3 % Ladynoir
        LCrand = randi([1,length(LC_selections)]);
        LCpick = LC_selections(LCrand);
        for i = 1:length(season_one) % Season 1
            if season_one(i) == LCpick
                fprintf('You should watch %s, which is season 1 episode %d.\n', LCpick, i);
            end
        end
        for i = 1:length(season_two) % Season 2
            if season_two(i) == LCpick
                fprintf('You should watch %s, which is season 2 episode %d.\n', LCpick, i);
            end
        end
        for i = 1:length(season_three) % Season 3
            if season_three(i) == LCpick
                fprintf('You should watch %s, which is season 3 episode %d.\n', LCpick, i);
            end
        end
        for i = 1:length(season_four) % Season 4
            if season_four(i) == LCpick
                fprintf('You should watch %s, which is season 4 episode %d.\n', LCpick, i);
            end
        end
        if LCpick == NY_special || LCpick == SH_special % Movie
            fprintf('You should watch %s.\n', LCpick);
        end

    case 4 % Marichat
        MCrand = randi([1,length(MC_selections)]);
        MCpick = MC_selections(MCrand);
        for i = 1:length(season_one) % Season 1
            if season_one(i) == MCpick
                fprintf('You should watch %s, which is season 1 episode %d.\n', MCpick, i);
            end
        end
        for i = 1:length(season_two) % Season 2
            if season_two(i) == MCpick
                fprintf('You should watch %s, which is season 2 episode %d.\n', MCpick, i);
            end
        end
        for i = 1:length(season_three) % Season 3
            if season_three(i) == MCpick
                fprintf('You should watch %s, which is season 3 episode %d.\n', MCpick, i);
            end
        end
        for i = 1:length(season_four) % Season 4
            if season_four(i) == MCpick
                fprintf('You should watch %s, which is season 4 episode %d.\n', MCpick, i);
            end
        end
        if MCpick == NY_special || MCpick == SH_special % Movie
            fprintf('You should watch %s.\n', MCpick);
        end
    case 5 % Ladrien
        LArand = randi([1,length(LA_selections)]);
        LApick = LA_selections(LArand);
        for i = 1:length(season_one) % Season 1
            if season_one(i) == LApick
                fprintf('You should watch %s, which is season 1 episode %d.\n', LApick, i);
            end
        end
        for i = 1:length(season_two) % Season 2
            if season_two(i) == LApick
                fprintf('You should watch %s, which is season 2 episode %d.\n', LApick, i);
            end
        end
        for i = 1:length(season_three) % Season 3
            if season_three(i) == LApick
                fprintf('You should watch %s, which is season 3 episode %d.\n', LApick, i);
            end
        end
        for i = 1:length(season_four) % Season 4
            if season_four(i) == LApick
                fprintf('You should watch %s, which is season 4 episode %d.\n', LApick, i);
            end
        end
        if LApick == NY_special || LApick == SH_special % Movie
            fprintf('You should watch %s.\n', LApick);
        end
end

switch category
    case 1 % Prefer to select an OTP.
        fprintf('Miraculous Ladybug!\n');
    case 2 % Season 1 random episode.
        season1rand = randi([1,26]);
        season1ep = season_one(season1rand);
        fprintf('You should watch %s, which is season 1 episode %d.\n', season1ep, season1rand);
    case 3 % Season 2 random episode.
        season2rand = randi([1,26]);
        season2ep = season_two(season2rand);
        fprintf('You should watch %s, which is season 2 episode %d.\n', season2ep, season2rand);
    case 4 % Season 3 random episode.
        season3rand = randi([1,25]);
        season3ep = season_three(season3rand);
        fprintf('You should watch %s, which is season 3 episode %d.\n', season3ep, season3rand);
    case 5 % Season 4 random episode.
        season4rand = randi([1,length(season_four)]);
        season4ep = season_four(season4rand);
        fprintf('You should watch %s, which is season 4 episode %d.\n', season4ep, season4rand);
    case 6 % Movie random pick.
        movierand = randi([1,2]);
        movieselc = [NY_special, SH_special];
        moviepick = movieselc(movierand);
        fprintf('You should watch %s.\n', moviepick);
    case 7 % Series random pick.
        seriesrand = randi([1,length(series_list)]);
        seriespick = series_list(seriesrand);
        seriesindex = find(series_list == seriespick);
        if seriesindex <= 26 % Season 1
            fprintf('You should watch %s, which is season 1 episode %d.\n', seriespick, seriesrand);
        elseif seriesindex > 26 && seriesindex <= 52 % Season 2
            s2index = find(season_two == seriespick);
            fprintf('You should watch %s, which is season 2 episode %d.\n', seriespick, s2index);
        elseif seriesindex > 53 && seriesindex <= 78 % Season 3
            s3index = find(season_three == seriespick);
            fprintf('You should watch %s, which is season 3 episode %d.\n', seriespick, s3index);
        elseif seriesindex > 79 % Season 4
            s4index = find(season_four == seriespick);
            fprintf('You should watch %s, which is season 4 episode %d.\n', seriespick, s4index);
        else % Movie
            fprintf('You should watch %s.\n', seriespick);
        end
end
end