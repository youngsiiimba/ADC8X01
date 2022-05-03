pkg load communications

sampled_values = [1.3 3.6 2.3 0.7 -0.7 -2.4 -3.4];

partition = (-4:4);

code_number = quantiz(sampled_values,partition);
disp("Code number: "), disp(code_number);

pcm_sequence = dec2bin(code_number, 4);
disp("PCM Sequence: "), disp(pcm_sequence);

