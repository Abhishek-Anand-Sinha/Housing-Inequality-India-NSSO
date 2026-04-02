*Analyse the probability of getting access to good house by socio-religious groups in India through logistic regression and suggest relevant public policies. 

* Block 6, Item 7: Condition of structure (1=Good, 2=Satisfactory, 3=Bad)
recode Struct_condition (1=1 "Good House") (2/3=0 "Not Good House"), g(Good_House)

* Cross-tabulate Housing Condition by Social Group with a Chi-Square test
tab Good_House Social_group, col chi 

* Bysort to see if this disparity changes between Rural and Urban sectors
bysort Sector: tab Good_House Religion, col chi

* 1. Bar chart showing probability of a good house by Social Group
graph hbar (mean) Good_House, over(Social_group) title("Probability of Good Housing by Social Group")

* 2. Stacked Bar Chart: Comparing subgroups within groups (e.g., Religion within Social Group)
graph hbar (mean) Good_House, over(Religion) over(Social_group) asyvars stack title("Intersecting Inequalities in Housing")
graph hbar (mean) Good_House, over(Religion) over(Social_group) asyvars stack title("Intersecting Inequalities in Housing")

* 3. Horizontal Bar Chart for Tenurial Status
graph hbar (mean) Good_House, over(Tenurial_status_dwelling) by(Social_group)

* Model 1: The Socio-Religious (Odds Ratios)
logit Good_House i.b9.Social_group i.b1.Religion, or

* Model 2: The "Leave No Stone Unturned" Model
* We must control for Income (Total_Monthly_expenditure), Sector, and Land Ownership to prove that caste/religion matters INDEPENDENTLY of wealth.
logit Good_House i.b9.Social_group i.b1.Religion Total_Monthly_expenditure i.Sector i.Tenurial_status_dwelling Land_possessed, or

*Percentage of each social group living in a good house, separated by Rural and Urban areas.
bysort Sector: tab Social_group Good_House [iw=weight], row nofreq

bysort Sector: tab Religion Good_House [iw=weight], row nofreq

* Keep only the heads of the household to see gender disparity accurately
preserve
keep if Relationship_head == 1
bysort Sector: tab Gender Good_House [iw=weight], row nofreq
restore

* 4. Gender & Highest Education Level of the Household Head
* Isolating the household head to link personal demographics to the household's physical dwelling
preserve
keep if Relationship_head == 1
bysort Sector: tab Highes_education Good_House [iw=weight], row nofreq //Edu Level of the Household Head
restore

