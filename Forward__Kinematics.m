clear all;
clc;
format compact;

% Τα μήκη των συνδέσμων σε m.
L1 = 2;
L2 = 1;

% Εισαγωγή τιμών για τις γωνίες θ1 και θ2 σε μοίρες.
theta_1 = input("Δώστε την γωνία θ1 σε μοίρες: ");
theta_2 = input("Δώστε την γωνία θ2 σε μοίρες: ");

% Υπολογισμός των ομογενών πινάκων μετασχηματισμού
A1 = [cosd(theta_1) -sind(theta_1) 0 L1*cosd(theta_1);sind(theta_1) cosd(theta_1) 0 L1*sind(theta_1);0 0 1 0;0 0 0 1]
A2 = [cosd(theta_2) -sind(theta_2) 0 L2*cosd(theta_2);sind(theta_2) cosd(theta_2) 0 L2*sind(theta_2);0 0 1 0;0 0 0 1]
T = A1 * A2

% Υπολογιαμός των συνεταγμένων
px = (L1*cosd(theta_1)) + (L2*cosd(theta_1+theta_2));
py = (L1*sind(theta_1)) + (L2*sind(theta_1+theta_2));

% Εμφάνιση των συντεταμένων
disp("Οι συντεταγμένες της θέσης είναι");
X = ['px = ', num2str(px)];
Y = ['py = ', num2str(py)];

disp(X);
disp(Y)
