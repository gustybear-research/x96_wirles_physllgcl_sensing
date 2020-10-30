bits_per_symbol = 8;           % Number of bits per symbol
max_code_symbol = 2^bits_per_symbol - 1;     % Codeword length 
message_length = 223;           % Message length
parity_length = 32;         % Parity length
a = 1;
b = 1;

T_enc_matrix = zeros(1,32);
T_dec_matrix = zeros(1,32);

for parity_length = 32:-2:2
    T_enc = zeros(1,1);
    T_dec = zeros(1,1);
    max_errors = parity_length/2;
    time_enc = 0;
    time_dec = 0;

    for i = 1:100
        % Generate message to send, 5 rows with 2 errors each
        row1 = floor(rand(1, message_length) * max_code_symbol);
        row2 = floor(rand(1, message_length) * max_code_symbol);
        row3 = floor(rand(1, message_length) * max_code_symbol);
        row4 = floor(rand(1, message_length) * max_code_symbol);
        row5 = floor(rand(1, message_length) * max_code_symbol);

        msg = gf([row1; row2; row3; row4; row5],bits_per_symbol);
        % Generate errors for each row, 25% of the parity length
        error_array = zeros(5, message_length + parity_length);
        for row_error = 1:5
            num_of_errors = floor(max_errors*0.1);
            out1 = randperm(message_length + parity_length);
            column_error = out1(1:num_of_errors);
            for o = 1:num_of_errors
                error_array(row_error,column_error(o)) = floor(rand(1,1) * (message_length - 1)) + 1;
            end
        end
        gf_error_array = gf(error_array,bits_per_symbol);
        tic
        code = rsenc(msg,message_length + parity_length, message_length);
        time_enc = toc;
        noisy_code = code + gf_error_array;
        tic
        [rxcode,cnumerr] = rsdec(noisy_code, message_length + parity_length, message_length);
        time_dec = toc;
        T_enc = T_enc + (time_enc / 100);
        T_dec = T_dec + (time_dec / 100);
    end
    T_dec_matrix(a) = T_dec;
    T_enc_matrix(a) = T_enc;
    a = a + 1;
end
T_enc_matrix
T_dec_matrix