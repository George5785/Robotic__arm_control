function [theta1,theta2] = inverse_kinimatic_function(px,py)
 
% Τα μήκη των συνδέσμων σε m.
 L1 = 2;
 L2 =1;

 c2 = (px^2 + py^2 - L1^2 - L2^2)/(2*L1*L2);    % Υπολογισμός του cosθ2

 z = (1 - c2^2);
 
 s2 = sqrt(z);              % Υπολογιαός του sinθ2

 theta__2 = atan2(s2,c2);    % Υπολογιαμός της γωνίας θ2

 theta2 = rad2deg(theta__2);   % Μετατροπή της γωνίας θ2 απο rad σε μοίρες. 

 % Υπολογιαμός του sinθ1
 s1 = (-L2*s2*px +(L1+L2*c2)*py)/(px^2 + py^2);   

 % Υπολογισμός του cosθ1
 c1 = (L2*s2*py + (L1+L2*c2)*px)/(px^2 + py^2);
 
 theta__1 = atan2(s1,c1); % Υπολογισμός της γωνίας θ1
 
 theta1 = rad2deg(theta__1); % Μετατροπή της θ1 από rad σε μοίρες.

 % Υπολογισμός θέσης του πρώτου συνδέσμου
 x1 = [0,L1*cosd(theta1)]; 
 y1 = [0,L1*sind(theta1)]; 

 %Σχεδιασμός βραχίονα
 plot(x1,y1)
 hold on
 x2=[x1,px];
 y2=[y1,py];
 plot(x2,y2)
 
end
