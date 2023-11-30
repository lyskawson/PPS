close all;
clear all;
L=@linspace;
M=@(f)(0-(1-mod(L(0,9*f,200),2)).^2);
[ Xs, Ys, Zs ] = sphere(199);
R=1+M(2)*.06 + M(4)*.03;
Xp = R.*Xs; Yp = R.*Ys;
Zp = ((0-L(1,-1,200)'.^4)*.3+.7).*Zs.*R;
Cp = hypot(hypot(Xp,Yp),Zs.*R);
surf(Xp,Yp,Zp,Cp,'FaceColor','interp','EdgeColor','none');
%% Stem

s = [1.5 1 repelem(0.7, 6)] .* [repmat([0.1 0.06], 1, 9) 0.1]';
[theta, phi] = meshgrid(L(0,pi/2,8),L(0,2*pi,19));
Xs = -(.3-cos(phi).*s).*cos(theta)+.3;
Zs = (.5-cos(phi).*s).*sin(theta)+.43;
Ys = -sin(phi).*s;
surface(Xs,Ys,Zs,[],'FaceColor', '#918151','EdgeColor','none', 'Clipping','off');
%% Style
colormap([ L(0.5, 0.84, 256); L(0.54, 0.87, 256); L(0.45, 0.82, 256) ]');
axis equal
box on
material([.6 1 .3])
lighting g
camlight