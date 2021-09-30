function [tout, x1, x2] = run_shared_gas_burner(initX1, initX2)
%SHARED_GAS_BURNER Script to run shared gas-burner model with the given
%initial values.
    %% Set the internal variables for the initial values
    open_system('shared_gas_burner')
    workspace = get_param('shared_gas_burner', 'ModelWorkspace');
    assignin(workspace,'initX1', initX1);
    assignin(workspace,'initX2', initX2)

    %% Run the simulation
    result = sim('shared_gas_burner');
    %% Set the result
    tout = result.tout;
    x1 = result.yout.signals(1).values;
    x2 = result.yout.signals(2).values;
end