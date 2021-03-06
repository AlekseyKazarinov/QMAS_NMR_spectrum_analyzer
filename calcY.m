function [Y] = calcY(phi, mu, eta)
% just calculates an abstract intermediate value of Y, depending on phi, mu, eta.
% Y will be used in following functions (see the theoretical expression).

% Input arguments: 
% 1) phi - an angle between EFG (electric field gradient) axis of symmetry
%          and direction of the magnetic field vector.
% 2) mu - designation of expression for mu = cos(theta), where theta is the
%          of sperical coordinate system.

    z = cos(2*phi);
    D = 21/16 - 7/8*eta*z + 7/48*eta*eta*z*z;
    E = -9/8 + eta*eta/12 + eta*z - 7/24*eta*eta*z*z;
    F = 5/16 - 1/8*eta*z + 7/48*eta*eta*z*z;
    mu2 = mu*mu;
    Y = D*mu2*mu2 + E*mu2 + F;
end

