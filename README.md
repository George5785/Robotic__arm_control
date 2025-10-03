# Robotic__arm_control
Το αρχείο "Forward_Kinematics" δέχεται ως είσοδο τις γωνιακές μετατοπίσεις (σε μοίρες) του κάθε συνδέσμου του βραχίονα και με την μέθοδο Denavit-Hartenberg υπολογίζει τους ομογενείς πίνακες μετασχηματισμού
και τις συντεταγμένες του τελικού στοιχείου δράσης.

To αρχείο "Inverse_Kinematics" δέχεται ως είσοδο από τον χρήστη τις συντεταγμένες
του σημείου που θέλουμε να έχει το end-effector και στη συνέχεια
δεδομένου του μήκους του κάθε συνδέσμου, υπολογίζεται ο χώρος εργασίας
και γίνεται έλεγχος για το αν το σημείο βρίσκεται εντος ή εκτός το χώρου
εργασίας. Γίνεται επίσης και κλήση της συνάαρτησης για την αντίστροφη
κινηματική ανάλυση.



Η συνάρτηση "Inverse_kinematics_function" υπολογίζει σε μοίρες τις γώνίες θ1 και θ2 των συνδέσμων,
με βάση τις συντεταγμένες. Επιπλέον απεικονίζει το σχηματισμό του βραχίονα.


Το αρχείο "state_space" υπολογίζει τους πίνακες του state space
και τους πίνακες ελεγξιμότητας και παρατήρησης.
Ελέγχει επίσης και αν το σύστημα είναι ελέγξιμο και παρατηρήσιμο.

Το αρχείο "PID_controler_with_disturbance" υπολογίζει την συνάρτηση μεταφοράς του
ελεγχόμενου αυατήματος και στη συνέχεια, με την μέθοδο Ziegler Nichols υπολογίζει
τις παραμέτρους του PID ελεγκτή. Έπίσης βρίσκει την κατάλληλη τιμμή για την παράμετρο
Kd, έτσι ώστε να καλύπτονται όλες οι προδιαγραφές. Στη συνέχεια ο χρήστης επιλέγει αν 
θέλει να δει την απόκριση του συστήματος με ή χωρίς διαταταραχή. Τέλος υπολογίζεται και 
η συνολική συνάρτηση μεταφοράς του συστήματος.


Το αρχείο "PID_control_simulation" είναι μια προσομοίωση του συστήματος αυτομάτου ελέγχου
που μελετάται στην σχτική εργασία. Απεικονίζει την αόκριση του συστήματος, με ή χωρίς διαταραχή.

-------------------------------------------------------------------------------------------------------------------------------------------------

The "Forward_Kinematics" file accepts as input the rotational displacements (in degrees) of each link of the arm and, using the Denavit-Hartenberg method, calculates the homogeneous transformation matrices
and the coordinates of the end effector.

The "Inverse_Kinematics" file accepts as input from the user the coordinates of the point where the end-effector must be, and then, calculates the workspace and checks if the point is inside or outside the workspace. 

The "Inverse_kinematics_function" function calculates the angles θ1 and θ2 of the links in degrees, based on the coordinates. In addition, it presents the formation of the arm.


The "state_space" file calculates the state space matrices and the controllability and observability matrices. It also checks if the system is controllable and observable.

The "PID_controler_with_disturbance" file calculates the transfer function of the control system and then, using the Ziegler Nichols method, calculates the parameters of the PID controller. It also finds the appropriate value for the parameter Kd. The user then chooses to see the system response with disturbance or without disturbance. Finally, the overall transfer function of the system is calculated .


The file "PID_control_simulation" is a simulation of the automatic control system studied in the thesis. It presents the response of the system, with disturbance or without disturbance.
