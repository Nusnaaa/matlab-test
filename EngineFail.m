function y = EngineFail(u)

% Assigning inputs
LFuelUsed = u(1)    ;
RFuelUsed = u(2)    ;
FailedEngine = u(3) ;

% A switch and dial on the simulink model determine if and which engine has
% failed
if FailedEngine == 1
        LFuelUsed = 0;
elseif FailedEngine == 2
        RFuelUsed = 0;
end

%Packing outputs
y(1) = LFuelUsed;
y(2) = RFuelUsed;

end