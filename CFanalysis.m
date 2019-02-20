 clear 
 x = readtable('CFTube4.txt');
 n = 4
switch n
    case 2
         OD = 2.084*0.0254; %m
         ID = 2.03*0.0254; %m
         t = 0.051*0.0254; %m
         L = 2.871*0.0254; %m
    case 3
         OD = 2.078*0.0254;
         ID = 2.031*0.0254;
         L = 2.964*0.0254;
    case 4
        OD = 2.085*0.0254;
        ID = 2.024*0.0254;
        L = 3.009*0.0254;
    case 5   
        OD = 2.072*0.0254;
        ID = 2.025*0.0254;
        L = 3.019*0.0254;
    case 6
        OD = 2.07*0.0254;
        ID = 2.033*0.0254;
        L = 2.997*0.0254;
    case 7
        OD = 2.095*0.0254;
        ID = 2.03*0.0254;
        L = 3.118*0.0254;
    case 8
        OD = 2.07*0.0254;
        ID = 2.03*0.0254;
        L = 2.981*0.0254;
    case 9
        OD = 2.072*0.0254;
        ID = 2.03*0.0254;
        L = 2.981*0.0254;
    case 10
        OD = 2.074*0.0254;
        ID = 2.034*0.0254;
        L = 3.008*0.0254;
    case 11 
        OD = 2.068*0.0254;
        ID = 2.037*0.0254;
        L = 3.039*0.0254;
 end 
 

 A = pi*(OD^2-ID^2)/4;



 ext = abs(table2array(x(:,2))/1000);
 load = abs(table2array(x(:,3)));
 strain = ((ext)/L);
%  strain(182) = [];
%  strain(181) = [];
%  strain(180) = [];
%  strain(179) = [];
%  load(182) = [];
%  load(181) = [];
%  load(180) = [];
%  load(179) = [];
 stress = load/A; %kN/m^2
 figure
 plot(strain,load)
 xlabel('Strain')
 ylabel('Stress [MPa]')
 title('Stress vs. Strain of Carbon Fiber Section')
 
 E = (stress./strain);
 
 sYield = max(abs(stress))*1000/10^6;
 fprintf('Yield Strength is: %f MPa\n', sYield)
 
 fprintf('Compressive Strength: %f MPa',sYield)