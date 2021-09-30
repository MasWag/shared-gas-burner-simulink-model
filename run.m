%% Simulate Shared Gas Burner
% Run the simulation and generate a tsv file containing a result of the simulation.
% All the configurations are hardcoded to the Simulink model

% Run the simulation using the shared gas burner model in Fig. 1 of [Doyen+, FORMATS'05].
[tout, x1, x2] = run_shared_gas_burner(0, 50);

% Write the simulation result to the tsv file
result_matrix = [tout, x1, x2];
result_filename = 'result.tsv';
writematrix(result_matrix, result_filename, 'FileType', 'text', 'Delimiter', 'tab');