% Read wheeze audio
[file, fs] = audioread('wheeze.wav');

% Convert to mono if stereo
if size(file,2) > 1
    file = mean(file, 2);
end

% Display info
disp(['Sample Rate = ', num2str(fs)]);
disp(['Samples = ', num2str(length(file))]);