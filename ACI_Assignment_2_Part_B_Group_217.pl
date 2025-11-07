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