% Prolog Knowledge Base for Medical Insurance Premium Prediction
% Generated from Decision Tree with max_depth = 4
% Features: Age, Diabetes, BloodPressureProblems, AnyTransplants, AnyChronicDiseases, Height, Weight, KnownAllergies, HistoryOfCancerInFamily, NumberOfMajorSurgeries
% Target: Premium (low or high)


premium(low) :- Age =< 46.5, Age =< 38.5, Transplants =< 0.5, CancerFamily =< 0.5.
premium(low) :- Age =< 46.5, Age =< 38.5, Transplants =< 0.5, CancerFamily > 0.5.
premium(low) :- Age =< 46.5, Age =< 38.5, Transplants > 0.5, Age =< 29.0.
premium(high) :- Age =< 46.5, Age =< 38.5, Transplants > 0.5, Age > 29.0.
premium(low) :- Age =< 46.5, Age > 38.5, ChronicDiseases =< 0.5, CancerFamily =< 0.5.
premium(high) :- Age =< 46.5, Age > 38.5, ChronicDiseases =< 0.5, CancerFamily > 0.5.
premium(low) :- Age =< 46.5, Age > 38.5, ChronicDiseases > 0.5, Age =< 39.5.
premium(high) :- Age =< 46.5, Age > 38.5, ChronicDiseases > 0.5, Age > 39.5.
premium(high) :- Age > 46.5, Age =< 48.5, Weight =< 73.5, Weight =< 70.5.
premium(high) :- Age > 46.5, Age =< 48.5, Weight =< 73.5, Weight > 70.5.
premium(low) :- Age > 46.5, Age =< 48.5, Weight > 73.5, Weight =< 94.5.
premium(high) :- Age > 46.5, Age =< 48.5, Weight > 73.5, Weight > 94.5.
premium(low) :- Age > 46.5, Age > 48.5, Weight =< 51.5, Height =< 162.5.
premium(high) :- Age > 46.5, Age > 48.5, Weight =< 51.5, Height > 162.5.
premium(high) :- Age > 46.5, Age > 48.5, Weight > 51.5, Age =< 50.5.
premium(high) :- Age > 46.5, Age > 48.5, Weight > 51.5, Age > 50.5.


premium(Age =< 46.5, Age =< 38.5, Transplants =< 0.5, CancerFamily =< 0.5, low).
premium(Age =< 46.5, Age =< 38.5, Transplants =< 0.5, CancerFamily > 0.5, low).
premium(Age =< 46.5, Age =< 38.5, Transplants > 0.5, Age =< 29.0, low).
premium(Age =< 46.5, Age =< 38.5, Transplants > 0.5, Age > 29.0, high).
premium(Age =< 46.5, Age > 38.5, ChronicDiseases =< 0.5, CancerFamily =< 0.5, low).
premium(Age =< 46.5, Age > 38.5, ChronicDiseases =< 0.5, CancerFamily > 0.5, high).
premium(Age =< 46.5, Age > 38.5, ChronicDiseases > 0.5, Age =< 39.5, low).
premium(Age =< 46.5, Age > 38.5, ChronicDiseases > 0.5, Age > 39.5, high).
premium(Age > 46.5, Age =< 48.5, Weight =< 73.5, Weight =< 70.5, high).
premium(Age > 46.5, Age =< 48.5, Weight =< 73.5, Weight > 70.5, high).
premium(Age > 46.5, Age =< 48.5, Weight > 73.5, Weight =< 94.5, low).
premium(Age > 46.5, Age =< 48.5, Weight > 73.5, Weight > 94.5, high).
premium(Age > 46.5, Age > 48.5, Weight =< 51.5, Height =< 162.5, low).
premium(Age > 46.5, Age > 48.5, Weight =< 51.5, Height > 162.5, high).
premium(Age > 46.5, Age > 48.5, Weight > 51.5, Age =< 50.5, high).
premium(Age > 46.5, Age > 48.5, Weight > 51.5, Age > 50.5, high).

premium_interactive :-
    write('Enter Age (e.g., 30): '), read(Age),
    write('Has Diabetes? (0 for No, 1 for Yes): '), read(Diabetes),
    write('Has Blood Pressure Problems? (0 for No, 1 for Yes): '), read(BPProblems),
    write('Had Any Transplants? (0 for No, 1 for Yes): '), read(Transplants),
    write('Has Any Chronic Diseases? (0 for No, 1 for Yes): '), read(ChronicDiseases),
    write('Enter Height in cm (e.g., 170.5): '), read(Height),
    write('Enter Weight in kg (e.g., 75.2): '), read(Weight),
    write('Has Known Allergies? (0 for No, 1 for Yes): '), read(Allergies),
    write('Has History of Cancer in Family? (0 for No, 1 for Yes): '), read(CancerFamily),
    write('Enter Number of Major Surgeries (e.g., 0, 1, 2): '), read(MajorSurgeries),


    (   Age =< 46.5, Age =< 38.5, Transplants =< 0.5, CancerFamily =< 0.5 -> 
        write('Insurance Premium should be low'), !
    ;   Age =< 46.5, Age =< 38.5, Transplants =< 0.5, CancerFamily > 0.5 -> 
        write('Insurance Premium should be low'), !
    ;   Age =< 46.5, Age =< 38.5, Transplants > 0.5, Age =< 29.0 -> 
        write('Insurance Premium should be low'), !
    ;   Age =< 46.5, Age =< 38.5, Transplants > 0.5, Age > 29.0 -> 
        write('Insurance Premium should be high'), !
    ;   Age =< 46.5, Age > 38.5, ChronicDiseases =< 0.5, CancerFamily =< 0.5 -> 
        write('Insurance Premium should be low'), !
    ;   Age =< 46.5, Age > 38.5, ChronicDiseases =< 0.5, CancerFamily > 0.5 -> 
        write('Insurance Premium should be high'), !
    ;   Age =< 46.5, Age > 38.5, ChronicDiseases > 0.5, Age =< 39.5 -> 
        write('Insurance Premium should be low'), !
    ;   Age =< 46.5, Age > 38.5, ChronicDiseases > 0.5, Age > 39.5 -> 
        write('Insurance Premium should be high'), !
    ;   Age > 46.5, Age =< 48.5, Weight =< 73.5, Weight =< 70.5 -> 
        write('Insurance Premium should be high'), !
    ;   Age > 46.5, Age =< 48.5, Weight =< 73.5, Weight > 70.5 -> 
        write('Insurance Premium should be high'), !
    ;   Age > 46.5, Age =< 48.5, Weight > 73.5, Weight =< 94.5 -> 
        write('Insurance Premium should be low'), !
    ;   Age > 46.5, Age =< 48.5, Weight > 73.5, Weight > 94.5 -> 
        write('Insurance Premium should be high'), !
    ;   Age > 46.5, Age > 48.5, Weight =< 51.5, Height =< 162.5 -> 
        write('Insurance Premium should be low'), !
    ;   Age > 46.5, Age > 48.5, Weight =< 51.5, Height > 162.5 -> 
        write('Insurance Premium should be high'), !
    ;   Age > 46.5, Age > 48.5, Weight > 51.5, Age =< 50.5 -> 
        write('Insurance Premium should be high'), !
    ;   Age > 46.5, Age > 48.5, Weight > 51.5, Age > 50.5 -> 
        write('Insurance Premium should be high'), !
    ;   write('Insurance Premium cannot be determined')
    ).


Run:
?- premium_interactive.