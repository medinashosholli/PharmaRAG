

/*

truncate table PharmaArticleTokens

exec Tokenize

*/




select *
from PharmaArticleTokens
order by ArticleID,TokenOrder

select *
from PharmaArticles
order by ID


Drop table PharmaArticles
Create table PharmaArticles
(
	ID int identity(1,1),
	SymptomDescription Nvarchar(1000),
	Condition nvarchar(100),
	DrugName nvarchar(100),
	DrugComposition nvarchar(1000),
	SubstanceType nvarchar(100),
	AgeTarget nvarchar(30),
	PriceUSD nvarchar(30)
)

Drop table PharmaArticleTokens
Create table PharmaArticleTokens
(
	ArticleID int,
	TokenOrder int,
	Token nvarchar(100)
)


truncate table PharmaArticles
--Common Cold
INSERT INTO PharmaArticles (SymptomDescription, Condition, DrugName, DrugComposition, SubstanceType, AgeTarget, PriceUSD)
VALUES 
('Runny nose and sneezing', 'Common Cold', 'Paracetamol', '500mg Paracetamol', 'Analgesic', 'Adults', '5'),
('Sore throat and congestion', 'Common Cold', 'Ibuprofen', '200mg Ibuprofen', 'Anti-inflammatory', 'Teens and Adults', '6'),
('Nasal congestion and fatigue', 'Common Cold', 'Cetirizine', '10mg Cetirizine', 'Antihistamine', 'All ages', '7'),
('Coughing and mild fever', 'Common Cold', 'Guaifenesin', '600mg Guaifenesin', 'Expectorant', 'Adults', '8'),
('Mild headache and sneezing', 'Common Cold', 'Aspirin', '325mg Aspirin', 'Analgesic', 'Adults', '4'),
('Blocked nose and dry throat', 'Common Cold', 'Pseudoephedrine', '60mg Pseudoephedrine', 'Decongestant', 'Teens and Adults', '5'),
('Body ache and fatigue', 'Common Cold', 'Naproxen', '250mg Naproxen', 'NSAID', 'Adults', '6'),
('Runny nose and watery eyes', 'Common Cold', 'Chlorpheniramine', '4mg Chlorpheniramine', 'Antihistamine', 'All ages', '4'),
('Throat irritation and coughing', 'Common Cold', 'Dextromethorphan', '20mg Dextromethorphan', 'Cough suppressant', 'Teens and Adults', '7'),
('Congestion and sinus pain', 'Common Cold', 'Phenylephrine', '10mg Phenylephrine', 'Decongestant', 'Adults', '5'),
('Mild fever and sore throat', 'Common Cold', 'Acetaminophen', '500mg Acetaminophen', 'Analgesic', 'All ages', '6'),
('Cough with mucus and fatigue', 'Common Cold', 'Bromhexine', '8mg Bromhexine', 'Mucolytic', 'Teens and Adults', '8'),
('Sneezing and throat discomfort', 'Common Cold', 'Loratadine', '10mg Loratadine', 'Antihistamine', 'All ages', '5'),
('Stuffy nose and body ache', 'Common Cold', 'Oxymetazoline', '0.05% Oxymetazoline', 'Nasal Spray', 'Adults', '4'),
('Fatigue and mild chills', 'Common Cold', 'Fluconazole', '150mg Fluconazole', 'Antifungal', 'Adults', '6'),
('Sore throat and hoarseness', 'Common Cold', 'Ambroxol', '30mg Ambroxol', 'Mucolytic', 'Teens and Adults', '5'),
('Dry nose and sneezing', 'Common Cold', 'Montelukast', '10mg Montelukast', 'Leukotriene inhibitor', 'All ages', '7'),
('Cough and chest tightness', 'Common Cold', 'Salbutamol', '100mcg Salbutamol', 'Bronchodilator', 'Teens and Adults', '9'),
('Headache and nasal irritation', 'Common Cold', 'Ranitidine', '150mg Ranitidine', 'H2 Blocker', 'Adults', '5'),
('Chills and general weakness', 'Common Cold', 'Vitamin C', '1000mg Ascorbic Acid', 'Supplement', 'All ages', '3'),
('Sinus congestion and pressure', 'Common Cold', 'Betamethasone', '0.1% Betamethasone', 'Corticosteroid', 'Adults', '6'),
('Dry cough and throat irritation', 'Common Cold', 'Codeine', '30mg Codeine', 'Opioid', 'Adults', '12'),
('Runny nose and itchy eyes', 'Common Cold', 'Levocetirizine', '5mg Levocetirizine', 'Antihistamine', 'All ages', '6'),
('Post-nasal drip and coughing', 'Common Cold', 'Fexofenadine', '180mg Fexofenadine', 'Antihistamine', 'Teens and Adults', '8'),
('Mild fever and nasal blockage', 'Common Cold', 'Hydroxyzine', '25mg Hydroxyzine', 'Antihistamine', 'All ages', '7'),
('Body chills and fatigue', 'Common Cold', 'Zinc', '25mg Zinc Gluconate', 'Supplement', 'All ages', '4'),
('Sneezing and throat pain', 'Common Cold', 'Melatonin', '5mg Melatonin', 'Hormone', 'Adults', '6'),
('Nasal discomfort and dizziness', 'Common Cold', 'Promethazine', '25mg Promethazine', 'Antihistamine', 'Adults', '5'),
('Blocked sinuses and headache', 'Common Cold', 'Fluticasone', '50mcg Fluticasone', 'Corticosteroid', 'Teens and Adults', '10'),
('Cough and mild fever', 'Common Cold', 'Amoxicillin', '500mg Amoxicillin', 'Antibiotic', 'Adults', '8')


--Angina
INSERT INTO PharmaArticles (SymptomDescription, Condition, DrugName, DrugComposition, SubstanceType, AgeTarget, PriceUSD)
VALUES 
('Chest pain during physical activity', 'Angina', 'Nitroglycerin', '0.4mg Nitroglycerin', 'Vasodilator', 'Adults', '10'),
('Pressure in chest radiating to arm', 'Angina', 'Aspirin', '81mg Aspirin', 'Antiplatelet', 'Adults', '5'),
('Shortness of breath with chest tightness', 'Angina', 'Metoprolol', '50mg Metoprolol', 'Beta-blocker', 'Adults', '15'),
('Burning sensation in chest', 'Angina', 'Amlodipine', '5mg Amlodipine', 'Calcium Channel Blocker', 'Adults', '12'),
('Heavy chest pain during stress', 'Angina', 'Isosorbide Mononitrate', '20mg Isosorbide Mononitrate', 'Nitrate', 'Adults', '8'),
('Pain spreading to neck or jaw', 'Angina', 'Clopidogrel', '75mg Clopidogrel', 'Antiplatelet', 'Adults', '20'),
('Tightness in chest after meal', 'Angina', 'Ramipril', '5mg Ramipril', 'ACE Inhibitor', 'Adults', '15'),
('Short, sharp chest pain', 'Angina', 'Diltiazem', '120mg Diltiazem', 'Calcium Channel Blocker', 'Adults', '18'),
('Chest discomfort and sweating', 'Angina', 'Propranolol', '40mg Propranolol', 'Beta-blocker', 'Adults', '10'),
('Fatigue with chest pain', 'Angina', 'Ivabradine', '5mg Ivabradine', 'Heart Rate Reducer', 'Adults', '25'),
('Burning pain during exertion', 'Angina', 'Losartan', '50mg Losartan', 'Angiotensin Receptor Blocker', 'Adults', '12'),
('Tight chest and dizziness', 'Angina', 'Bisoprolol', '10mg Bisoprolol', 'Beta-blocker', 'Adults', '14'),
('Pressure-like pain after exercise', 'Angina', 'Nifedipine', '30mg Nifedipine', 'Calcium Channel Blocker', 'Adults', '10'),
('Radiating pain to left shoulder', 'Angina', 'Enalapril', '10mg Enalapril', 'ACE Inhibitor', 'Adults', '12'),
('Persistent chest discomfort', 'Angina', 'Ranolazine', '500mg Ranolazine', 'Antianginal Agent', 'Adults', '30'),
('Numbness with chest pressure', 'Angina', 'Spironolactone', '25mg Spironolactone', 'Aldosterone Antagonist', 'Adults', '20'),
('Pain triggered by cold exposure', 'Angina', 'Hydrochlorothiazide', '25mg Hydrochlorothiazide', 'Diuretic', 'Adults', '8'),
('Tightness during emotional stress', 'Angina', 'Verapamil', '120mg Verapamil', 'Calcium Channel Blocker', 'Adults', '10'),
('Intermittent chest heaviness', 'Angina', 'Carvedilol', '25mg Carvedilol', 'Beta-blocker', 'Adults', '15'),
('Short-lived chest pain', 'Angina', 'Captopril', '25mg Captopril', 'ACE Inhibitor', 'Adults', '8'),
('Pain in chest with nausea', 'Angina', 'Furosemide', '40mg Furosemide', 'Diuretic', 'Adults', '10'),
('Chest tightness during rest', 'Angina', 'Atorvastatin', '10mg Atorvastatin', 'Statin', 'Adults', '15'),
('Chest pain spreading to back', 'Angina', 'Rosuvastatin', '20mg Rosuvastatin', 'Statin', 'Adults', '20'),
('Discomfort after climbing stairs', 'Angina', 'Pravastatin', '40mg Pravastatin', 'Statin', 'Adults', '12'),
('Pressure and cold sweats', 'Angina', 'Eplerenone', '25mg Eplerenone', 'Aldosterone Antagonist', 'Adults', '22'),
('Chest pain with irregular heartbeat', 'Angina', 'Warfarin', '5mg Warfarin', 'Anticoagulant', 'Adults', '25'),
('Tight chest and pale skin', 'Angina', 'Dabigatran', '150mg Dabigatran', 'Anticoagulant', 'Adults', '30'),
('Short chest pain episodes', 'Angina', 'Apixaban', '5mg Apixaban', 'Anticoagulant', 'Adults', '35'),
('Pressure in chest after meals', 'Angina', 'Edoxaban', '60mg Edoxaban', 'Anticoagulant', 'Adults', '32'),
('Severe pain after exertion', 'Angina', 'Rivaroxaban', '20mg Rivaroxaban', 'Anticoagulant', 'Adults', '28')


--Eczema
INSERT INTO PharmaArticles (SymptomDescription, Condition, DrugName, DrugComposition, SubstanceType, AgeTarget, PriceUSD)
VALUES 
('Red, itchy patches on skin', 'Eczema', 'Hydrocortisone', '1% Hydrocortisone', 'Corticosteroid', 'All ages', '8'),
('Dry, flaky skin on arms', 'Eczema', 'Betamethasone', '0.1% Betamethasone', 'Corticosteroid', 'Adults', '12'),
('Small blisters on hands', 'Eczema', 'Triamcinolone', '0.1% Triamcinolone', 'Corticosteroid', 'Teens and Adults', '10'),
('Thickened, scaly skin on elbows', 'Eczema', 'Clobetasol', '0.05% Clobetasol', 'Corticosteroid', 'Adults', '15'),
('Itchy rash on face', 'Eczema', 'Tacrolimus', '0.1% Tacrolimus', 'Calcineurin Inhibitor', 'Teens and Adults', '20'),
('Inflamed skin with oozing', 'Eczema', 'Pimecrolimus', '1% Pimecrolimus', 'Calcineurin Inhibitor', 'All ages', '22'),
('Dry, cracked skin on hands', 'Eczema', 'Emollient Cream', 'Lanolin, Glycerin', 'Moisturizer', 'All ages', '5'),
('Skin peeling on fingers', 'Eczema', 'Urea Cream', '10% Urea', 'Keratin Softener', 'Teens and Adults', '7'),
('Rough patches on knees', 'Eczema', 'Coal Tar', '5% Coal Tar', 'Antipruritic', 'Adults', '6'),
('Severe itching and redness', 'Eczema', 'Mometasone', '0.1% Mometasone', 'Corticosteroid', 'All ages', '10'),
('Crusty skin around joints', 'Eczema', 'Fluocinolone', '0.01% Fluocinolone', 'Corticosteroid', 'Teens and Adults', '9'),
('Swelling and irritation on face', 'Eczema', 'Desonide', '0.05% Desonide', 'Corticosteroid', 'All ages', '8'),
('Oozing patches on legs', 'Eczema', 'Betamethasone Dipropionate', '0.05% Betamethasone Dipropionate', 'Corticosteroid', 'Adults', '12'),
('Scaly patches behind ears', 'Eczema', 'Prednisolone', '10mg Prednisolone', 'Systemic Steroid', 'Adults', '15'),
('Recurring red rash on neck', 'Eczema', 'Hydroxyzine', '25mg Hydroxyzine', 'Antihistamine', 'All ages', '7'),
('Chronic itching and dryness', 'Eczema', 'Cetirizine', '10mg Cetirizine', 'Antihistamine', 'All ages', '6'),
('Sensitive skin with burning sensation', 'Eczema', 'Crotamiton', '10% Crotamiton', 'Antipruritic', 'Adults', '8'),
('Skin discoloration from scratching', 'Eczema', 'Azathioprine', '50mg Azathioprine', 'Immunosuppressant', 'Adults', '30'),
('Red, irritated skin after scratching', 'Eczema', 'Methotrexate', '7.5mg Methotrexate', 'Immunosuppressant', 'Adults', '25'),
('Dry, itchy scalp', 'Eczema', 'Salicylic Acid', '2% Salicylic Acid', 'Keratolytic Agent', 'All ages', '5'),
('Skin redness aggravated by soaps', 'Eczema', 'Sodium Hypochlorite', '0.005% Sodium Hypochlorite', 'Antiseptic', 'All ages', '4'),
('Severe dryness causing cracks', 'Eczema', 'Petroleum Jelly', '100% Petroleum', 'Moisturizer', 'All ages', '2'),
('Skin fissures and soreness', 'Eczema', 'Ceramide Cream', 'Ceramides, Cholesterol', 'Moisturizer', 'All ages', '10'),
('Red, oozing patches on chest', 'Eczema', 'Tetracycline', '250mg Tetracycline', 'Antibiotic', 'Adults', '15'),
('Thickened, darkened skin patches', 'Eczema', 'Dupilumab', '300mg Dupilumab', 'Biologic', 'Adults', '1000'),
('Itchy skin with white scales', 'Eczema', 'Calamine Lotion', 'Calamine, Zinc Oxide', 'Antipruritic', 'All ages', '4'),
('Burning rash on hands', 'Eczema', 'Dexamethasone', '0.1% Dexamethasone', 'Corticosteroid', 'Adults', '8'),
('Severe flare-ups during winter', 'Eczema', 'Mycophenolate', '500mg Mycophenolate Mofetil', 'Immunosuppressant', 'Adults', '35'),
('Chronic eczema with secondary infection', 'Eczema', 'Fusidic Acid', '2% Fusidic Acid', 'Antibiotic', 'All ages', '12'),
('Flare-ups triggered by allergens', 'Eczema', 'Levocetirizine', '5mg Levocetirizine', 'Antihistamine', 'All ages', '6')

--Psoriasis
INSERT INTO PharmaArticles (SymptomDescription, Condition, DrugName, DrugComposition, SubstanceType, AgeTarget, PriceUSD)
VALUES 
('Red patches with silver scales on elbows', 'Psoriasis', 'Clobetasol', '0.05% Clobetasol', 'Corticosteroid', 'Adults', '15'),
('Thick, scaly skin on knees', 'Psoriasis', 'Betamethasone', '0.1% Betamethasone', 'Corticosteroid', 'Teens and Adults', '12'),
('Itchy, inflamed skin on scalp', 'Psoriasis', 'Coal Tar Shampoo', '2% Coal Tar', 'Topical Treatment', 'All ages', '10'),
('Small scaling spots on arms', 'Psoriasis', 'Calcipotriol', '50mcg Calcipotriol', 'Vitamin D Analog', 'Teens and Adults', '20'),
('Dry, cracked skin that bleeds', 'Psoriasis', 'Tazarotene', '0.05% Tazarotene', 'Topical Retinoid', 'Adults', '25'),
('Patches of thickened skin on hands', 'Psoriasis', 'Hydrocortisone', '1% Hydrocortisone', 'Corticosteroid', 'All ages', '8'),
('Red plaques with silver scales', 'Psoriasis', 'Methotrexate', '15mg Methotrexate', 'Immunosuppressant', 'Adults', '30'),
('Flaking and irritation on scalp', 'Psoriasis', 'Salicylic Acid', '3% Salicylic Acid', 'Keratolytic Agent', 'All ages', '7'),
('Pitted nails with discoloration', 'Psoriasis', 'Cyclosporine', '100mg Cyclosporine', 'Immunosuppressant', 'Adults', '40'),
('Skin peeling on legs', 'Psoriasis', 'Adalimumab', '40mg Adalimumab', 'Biologic', 'Adults', '1200'),
('Plaques on skin with itchiness', 'Psoriasis', 'Infliximab', '100mg Infliximab', 'Biologic', 'Adults', '1000'),
('Cracked skin on palms', 'Psoriasis', 'Urea Cream', '10% Urea', 'Keratolytic Agent', 'All ages', '6'),
('Thick plaques with redness on back', 'Psoriasis', 'Etanercept', '50mg Etanercept', 'Biologic', 'Adults', '900'),
('Red patches on knees and ankles', 'Psoriasis', 'Secukinumab', '150mg Secukinumab', 'Biologic', 'Adults', '1500'),
('Skin cracking and scaling', 'Psoriasis', 'Ixekizumab', '80mg Ixekizumab', 'Biologic', 'Adults', '1300'),
('Scaly, inflamed skin on arms', 'Psoriasis', 'Certolizumab', '200mg Certolizumab', 'Biologic', 'Adults', '1100'),
('Itching and scaling on face', 'Psoriasis', 'Tofacitinib', '10mg Tofacitinib', 'JAK Inhibitor', 'Adults', '30'),
('Painful plaques on joints', 'Psoriasis', 'Apremilast', '30mg Apremilast', 'PDE4 Inhibitor', 'Adults', '40'),
('Red plaques with cracking', 'Psoriasis', 'Brodalumab', '210mg Brodalumab', 'Biologic', 'Adults', '1400'),
('Thickened skin on elbows', 'Psoriasis', 'Guselkumab', '100mg Guselkumab', 'Biologic', 'Adults', '1200'),
('Persistent patches with scaling', 'Psoriasis', 'Roflumilast', '0.3% Roflumilast', 'PDE4 Inhibitor', 'Teens and Adults', '35'),
('Flare-ups with severe scaling', 'Psoriasis', 'Dupilumab', '300mg Dupilumab', 'Biologic', 'Adults', '1300'),
('Painful scaling and cracking', 'Psoriasis', 'Risankizumab', '150mg Risankizumab', 'Biologic', 'Adults', '1400'),
('Red, scaly patches with itching', 'Psoriasis', 'Vitamin D Cream', 'Calcitriol 3mcg/g', 'Topical Treatment', 'All ages', '10'),
('Plaques on scalp with redness', 'Psoriasis', 'Topical Steroid Foam', 'Clobetasol Propionate 0.05%', 'Corticosteroid', 'All ages', '20'),
('Flaky skin around joints', 'Psoriasis', 'Mometasone', '0.1% Mometasone', 'Corticosteroid', 'Teens and Adults', '15'),
('Inflammation and scaling on palms', 'Psoriasis', 'Triamcinolone', '0.1% Triamcinolone', 'Corticosteroid', 'Adults', '12'),
('Persistent redness and flaking', 'Psoriasis', 'Vitamin E Cream', 'Vitamin E 5%', 'Topical Treatment', 'All ages', '5'),
('Burning sensation on plaques', 'Psoriasis', 'Erythromycin', '500mg Erythromycin', 'Antibiotic', 'Adults', '10'),
('Recurring patches with severe itching', 'Psoriasis', 'Dithranol', '0.1% Dithranol', 'Keratolytic Agent', 'Teens and Adults', '15');


--Anemia
INSERT INTO PharmaArticles (SymptomDescription, Condition, DrugName, DrugComposition, SubstanceType, AgeTarget, PriceUSD)
VALUES 
('Fatigue and weakness', 'Anemia', 'Ferrous Sulfate', '325mg Ferrous Sulfate', 'Iron Supplement', 'All ages', '10'),
('Pale skin and dizziness', 'Anemia', 'Folic Acid', '1mg Folic Acid', 'Vitamin Supplement', 'All ages', '5'),
('Shortness of breath during exertion', 'Anemia', 'Vitamin B12 Injection', '1000mcg Cyanocobalamin', 'Vitamin Supplement', 'Adults', '15'),
('Cold hands and feet', 'Anemia', 'Ferrous Gluconate', '240mg Ferrous Gluconate', 'Iron Supplement', 'All ages', '12'),
('Fast or irregular heartbeat', 'Anemia', 'Iron Dextran', '100mg Iron Dextran', 'Iron Supplement', 'Adults', '30'),
('Dizziness upon standing', 'Anemia', 'Folic Acid Tablets', '5mg Folic Acid', 'Vitamin Supplement', 'All ages', '7'),
('Craving for non-food items (pica)', 'Anemia', 'Polysaccharide-Iron Complex', '150mg Elemental Iron', 'Iron Supplement', 'Adults', '20'),
('Tiredness with pale skin', 'Anemia', 'Vitamin C', '500mg Ascorbic Acid', 'Antioxidant', 'All ages', '5'),
('Brittle nails and hair loss', 'Anemia', 'Iron Sucrose', '200mg Iron Sucrose', 'Iron Supplement', 'Adults', '25'),
('Sore tongue with cracks', 'Anemia', 'Cyanocobalamin Tablets', '500mcg Cyanocobalamin', 'Vitamin Supplement', 'All ages', '10'),
('Headaches and cold extremities', 'Anemia', 'Iron Polysaccharide', '150mg Iron Polysaccharide', 'Iron Supplement', 'Teens and Adults', '15'),
('Extreme fatigue during pregnancy', 'Anemia', 'Prenatal Vitamins with Iron', 'Iron, Folic Acid, DHA', 'Supplement', 'Pregnant Women', '25'),
('Weakness and pale conjunctiva', 'Anemia', 'Iron Fumarate', '210mg Iron Fumarate', 'Iron Supplement', 'All ages', '12'),
('Reduced exercise tolerance', 'Anemia', 'Methylcobalamin', '500mcg Methylcobalamin', 'Vitamin Supplement', 'All ages', '8'),
('Shortness of breath at rest', 'Anemia', 'Folic Acid with B12', '5mg Folic Acid, 500mcg B12', 'Vitamin Supplement', 'Adults', '10'),
('Dull, pale skin', 'Anemia', 'Iron Bisglycinate', '25mg Elemental Iron', 'Iron Supplement', 'All ages', '18'),
('Chest pain during activity', 'Anemia', 'Iron with Vitamin C', '325mg Iron, 500mg Vitamin C', 'Iron Supplement', 'Adults', '20'),
('Restless leg syndrome', 'Anemia', 'Iron Injection', '100mg Iron', 'Iron Supplement', 'Adults', '35'),
('Difficulty concentrating', 'Anemia', 'Iron Tablets', '65mg Elemental Iron', 'Iron Supplement', 'All ages', '10'),
('Irregular menstrual cycles', 'Anemia', 'Multivitamins with Iron', 'Iron, Vitamin B Complex', 'Supplement', 'Women', '15'),
('Unusual cravings for ice', 'Anemia', 'Ferrous Ascorbate', '100mg Elemental Iron', 'Iron Supplement', 'All ages', '12'),
('Pale gums and lips', 'Anemia', 'Vitamin B6 and B12', '10mg B6, 500mcg B12', 'Vitamin Supplement', 'All ages', '7'),
('Rapid heartbeat after exercise', 'Anemia', 'Liposomal Iron', '25mg Iron', 'Iron Supplement', 'All ages', '18'),
('Frequent infections', 'Anemia', 'Iron and Folic Acid Syrup', '100mg Iron, 5mg Folic Acid', 'Supplement', 'Children', '8'),
('Pale skin and fainting episodes', 'Anemia', 'Carbonyl Iron', '45mg Elemental Iron', 'Iron Supplement', 'Teens and Adults', '12'),
('Difficulty breathing and fatigue', 'Anemia', 'Hydroxocobalamin', '1000mcg Hydroxocobalamin', 'Vitamin Supplement', 'Adults', '20'),
('Irritability and lack of energy', 'Anemia', 'Liquid Iron Supplement', 'Ferrous Gluconate Solution', 'Iron Supplement', 'Children', '15'),
('Hair thinning with weakness', 'Anemia', 'Chelated Iron', '25mg Elemental Iron', 'Iron Supplement', 'All ages', '20'),
('Poor appetite with tiredness', 'Anemia', 'Hematinic Syrup', 'Iron, Vitamin B12, Folic Acid', 'Supplement', 'Children', '10'),
('Bone marrow suppression symptoms', 'Anemia', 'Epoetin Alfa', '2000 IU Erythropoietin', 'Growth Factor', 'Adults', '100');


--Peptic Ulcer
INSERT INTO PharmaArticles (SymptomDescription, Condition, DrugName, DrugComposition, SubstanceType, AgeTarget, PriceUSD)
VALUES 
('Burning pain in the upper abdomen', 'Peptic Ulcer', 'Omeprazole', '20mg Omeprazole', 'Proton Pump Inhibitor', 'Adults', '12'),
('Nausea and bloating after meals', 'Peptic Ulcer', 'Pantoprazole', '40mg Pantoprazole', 'Proton Pump Inhibitor', 'Adults', '15'),
('Heartburn and acidic taste in mouth', 'Peptic Ulcer', 'Esomeprazole', '20mg Esomeprazole', 'Proton Pump Inhibitor', 'Adults', '18'),
('Upper stomach pain at night', 'Peptic Ulcer', 'Ranitidine', '150mg Ranitidine', 'H2 Blocker', 'Adults', '10'),
('Vomiting with traces of blood', 'Peptic Ulcer', 'Famotidine', '20mg Famotidine', 'H2 Blocker', 'All ages', '8'),
('Feeling full quickly after eating', 'Peptic Ulcer', 'Lansoprazole', '30mg Lansoprazole', 'Proton Pump Inhibitor', 'Adults', '14'),
('Burning sensation relieved by food', 'Peptic Ulcer', 'Sucralfate', '1g Sucralfate', 'Mucosal Protectant', 'All ages', '20'),
('Abdominal pain after spicy food', 'Peptic Ulcer', 'Amoxicillin', '500mg Amoxicillin', 'Antibiotic', 'All ages', '10'),
('Frequent burping and indigestion', 'Peptic Ulcer', 'Clarithromycin', '250mg Clarithromycin', 'Antibiotic', 'All ages', '15'),
('Loss of appetite and weight loss', 'Peptic Ulcer', 'Metronidazole', '500mg Metronidazole', 'Antibiotic', 'Adults', '12'),
('Black or tarry stools', 'Peptic Ulcer', 'Bismuth Subsalicylate', '262mg Bismuth Subsalicylate', 'Gastrointestinal Agent', 'All ages', '8'),
('Sharp stomach pain post meals', 'Peptic Ulcer', 'Tetracycline', '500mg Tetracycline', 'Antibiotic', 'Adults', '20'),
('Acid reflux and sour belching', 'Peptic Ulcer', 'Aluminum Hydroxide', '200mg Aluminum Hydroxide', 'Antacid', 'All ages', '5'),
('Stomach discomfort when empty', 'Peptic Ulcer', 'Magnesium Hydroxide', '200mg Magnesium Hydroxide', 'Antacid', 'All ages', '6'),
('Feeling of burning in chest', 'Peptic Ulcer', 'Sodium Bicarbonate', '325mg Sodium Bicarbonate', 'Antacid', 'All ages', '4'),
('Vomiting with abdominal bloating', 'Peptic Ulcer', 'Rabeprazole', '20mg Rabeprazole', 'Proton Pump Inhibitor', 'Adults', '16'),
('Mild abdominal pain worsened by alcohol', 'Peptic Ulcer', 'Dexlansoprazole', '30mg Dexlansoprazole', 'Proton Pump Inhibitor', 'Adults', '22'),
('Intermittent hunger pangs', 'Peptic Ulcer', 'Cimetidine', '200mg Cimetidine', 'H2 Blocker', 'Adults', '9'),
('Gnawing pain during early morning', 'Peptic Ulcer', 'Misoprostol', '200mcg Misoprostol', 'Prostaglandin Analog', 'Adults', '18'),
('Heartburn that worsens at night', 'Peptic Ulcer', 'Esomeprazole/Naproxen', '20mg Esomeprazole, 500mg Naproxen', 'Combination Therapy', 'Adults', '25'),
('Stomach pain after NSAID use', 'Peptic Ulcer', 'Diclofenac/Misoprostol', '50mg Diclofenac, 200mcg Misoprostol', 'Combination Therapy', 'Adults', '20'),
('Pain relieved temporarily by antacids', 'Peptic Ulcer', 'Antacid Suspension', 'Magnesium Hydroxide, Aluminum Hydroxide', 'Antacid', 'All ages', '7'),
('Upper stomach pain with nausea', 'Peptic Ulcer', 'Carbenoxolone', '100mg Carbenoxolone', 'Mucosal Protectant', 'Adults', '15'),
('Persistent pain and belching', 'Peptic Ulcer', 'Zinc Carnosine', '75mg Zinc Carnosine', 'Gastrointestinal Agent', 'Adults', '12'),
('Recurrent ulcers with burning pain', 'Peptic Ulcer', 'Helicobacter Pylori Kit', 'Amoxicillin, Clarithromycin, Lansoprazole', 'Combination Therapy', 'All ages', '30'),
('Feeling of bloating after meals', 'Peptic Ulcer', 'Domperidone', '10mg Domperidone', 'Prokinetic Agent', 'Adults', '10'),
('Sharp stomach pain exacerbated by stress', 'Peptic Ulcer', 'Itopride', '50mg Itopride', 'Prokinetic Agent', 'Adults', '12'),
('Heartburn with upper abdominal discomfort', 'Peptic Ulcer', 'Gaviscon', 'Sodium Alginate, Sodium Bicarbonate', 'Antacid', 'All ages', '10'),
('Nausea and pain after NSAIDs', 'Peptic Ulcer', 'Celecoxib', '200mg Celecoxib', 'Selective COX-2 Inhibitor', 'Adults', '18'),
('Bleeding ulcers with severe discomfort', 'Peptic Ulcer', 'Tranexamic Acid', '500mg Tranexamic Acid', 'Hemostatic Agent', 'Adults', '25');

--Migraine
INSERT INTO PharmaArticles (SymptomDescription, Condition, DrugName, DrugComposition, SubstanceType, AgeTarget, PriceUSD)
VALUES 
('Pulsating pain on one side of the head', 'Migraine', 'Sumatriptan', '50mg Sumatriptan', 'Triptan', 'Adults', '12'),
('Nausea and sensitivity to light', 'Migraine', 'Rizatriptan', '10mg Rizatriptan', 'Triptan', 'Adults', '15'),
('Throbbing headache lasting hours', 'Migraine', 'Zolmitriptan', '2.5mg Zolmitriptan', 'Triptan', 'Adults', '14'),
('Visual aura and moderate headache', 'Migraine', 'Naratriptan', '2.5mg Naratriptan', 'Triptan', 'Adults', '10'),
('Intense pain with light sensitivity', 'Migraine', 'Eletriptan', '40mg Eletriptan', 'Triptan', 'Adults', '16'),
('Headache with nausea and dizziness', 'Migraine', 'Frovatriptan', '2.5mg Frovatriptan', 'Triptan', 'Adults', '18'),
('Severe pain with sound sensitivity', 'Migraine', 'Amitriptyline', '10mg Amitriptyline', 'Tricyclic Antidepressant', 'Adults', '8'),
('Recurring headache triggered by stress', 'Migraine', 'Propranolol', '40mg Propranolol', 'Beta Blocker', 'Adults', '12'),
('Throbbing pain worsened by movement', 'Migraine', 'Topiramate', '50mg Topiramate', 'Anticonvulsant', 'Adults', '15'),
('Aura followed by pounding headache', 'Migraine', 'Valproic Acid', '500mg Valproic Acid', 'Anticonvulsant', 'Adults', '20'),
('Moderate to severe headache with vomiting', 'Migraine', 'Erenumab', '70mg Erenumab', 'CGRP Inhibitor', 'Adults', '600'),
('Recurring headache with visual disturbances', 'Migraine', 'Fremanezumab', '225mg Fremanezumab', 'CGRP Inhibitor', 'Adults', '650'),
('Daily headaches with migraine features', 'Migraine', 'Galcanezumab', '120mg Galcanezumab', 'CGRP Inhibitor', 'Adults', '650'),
('Severe unilateral headache', 'Migraine', 'Eptinezumab', '100mg Eptinezumab', 'CGRP Inhibitor', 'Adults', '700'),
('Frequent migraines with photophobia', 'Migraine', 'Botulinum Toxin', '100 Units Botulinum Toxin', 'Neuromuscular Blocker', 'Adults', '1200'),
('Migraine triggered by menstruation', 'Migraine', 'Naproxen', '500mg Naproxen', 'NSAID', 'Adults', '10'),
('Throbbing pain with light and sound aversion', 'Migraine', 'Ibuprofen', '400mg Ibuprofen', 'NSAID', 'All ages', '5'),
('Severe headache with stiff neck', 'Migraine', 'Acetaminophen', '500mg Acetaminophen', 'Analgesic', 'All ages', '4'),
('Recurring headache with scalp tenderness', 'Migraine', 'Divalproex Sodium', '500mg Divalproex Sodium', 'Anticonvulsant', 'Adults', '25'),
('Moderate headache relieved by caffeine', 'Migraine', 'Caffeine with Aspirin', '65mg Caffeine, 500mg Aspirin', 'Combination Therapy', 'Adults', '8'),
('Headache accompanied by vomiting', 'Migraine', 'Metoclopramide', '10mg Metoclopramide', 'Antiemetic', 'All ages', '6'),
('Throbbing pain behind the eyes', 'Migraine', 'Ondansetron', '4mg Ondansetron', 'Antiemetic', 'All ages', '10'),
('Recurring pain worsened by physical activity', 'Migraine', 'Ergotamine', '1mg Ergotamine', 'Ergot Alkaloid', 'Adults', '18'),
('Severe pain with sensitivity to smells', 'Migraine', 'Dihydroergotamine', '1mg Dihydroergotamine', 'Ergot Alkaloid', 'Adults', '20'),
('Headache with vision blurriness', 'Migraine', 'Lasmiditan', '50mg Lasmiditan', '5-HT1F Agonist', 'Adults', '25'),
('Recurring headaches lasting days', 'Migraine', 'Ketorolac', '30mg Ketorolac', 'NSAID', 'Adults', '15'),
('Severe pain with occasional fainting', 'Migraine', 'Acetaminophen with Codeine', '300mg Acetaminophen, 30mg Codeine', 'Combination Therapy', 'Adults', '12'),
('Throbbing pain relieved by sleep', 'Migraine', 'Melatonin', '3mg Melatonin', 'Hormone Supplement', 'All ages', '8'),
('Severe recurring pain with aura', 'Migraine', 'Magnesium Citrate', '500mg Magnesium', 'Mineral Supplement', 'All ages', '10'),
('Moderate to severe pain triggered by dehydration', 'Migraine', 'Coenzyme Q10', '200mg CoQ10', 'Nutritional Supplement', 'All ages', '30'),
('Recurring migraine with neck stiffness', 'Migraine', 'Butterbur Extract', '75mg Butterbur', 'Herbal Remedy', 'All ages', '20');


--Arthritis
INSERT INTO PharmaArticles (SymptomDescription, Condition, DrugName, DrugComposition, SubstanceType, AgeTarget, PriceUSD)
VALUES 
('Joint pain and stiffness', 'Arthritis', 'Ibuprofen', '400mg Ibuprofen', 'NSAID', 'All ages', '5'),
('Swelling and redness in joints', 'Arthritis', 'Diclofenac', '50mg Diclofenac', 'NSAID', 'Adults', '8'),
('Pain worsened by movement', 'Arthritis', 'Naproxen', '500mg Naproxen', 'NSAID', 'Adults', '10'),
('Morning stiffness in hands', 'Arthritis', 'Celecoxib', '200mg Celecoxib', 'Selective COX-2 Inhibitor', 'Adults', '12'),
('Severe pain in knees', 'Arthritis', 'Meloxicam', '15mg Meloxicam', 'Selective COX-2 Inhibitor', 'Adults', '15'),
('Inflammation in small joints', 'Arthritis', 'Etodolac', '300mg Etodolac', 'NSAID', 'Adults', '10'),
('Joint pain with fatigue', 'Arthritis', 'Prednisone', '10mg Prednisone', 'Corticosteroid', 'All ages', '8'),
('Swollen joints with pain', 'Arthritis', 'Methylprednisolone', '4mg Methylprednisolone', 'Corticosteroid', 'Adults', '15'),
('Chronic pain in hands and knees', 'Arthritis', 'Hydroxychloroquine', '200mg Hydroxychloroquine', 'Disease-Modifying Antirheumatic Drug (DMARD)', 'Adults', '25'),
('Episodic joint swelling', 'Arthritis', 'Sulfasalazine', '500mg Sulfasalazine', 'DMARD', 'Adults', '18'),
('Persistent joint inflammation', 'Arthritis', 'Methotrexate', '10mg Methotrexate', 'DMARD', 'Adults', '30'),
('Severe stiffness and swelling', 'Arthritis', 'Leflunomide', '20mg Leflunomide', 'DMARD', 'Adults', '20'),
('Painful and swollen fingers', 'Arthritis', 'Tofacitinib', '5mg Tofacitinib', 'JAK Inhibitor', 'Adults', '40'),
('Joint pain with deformity', 'Arthritis', 'Baricitinib', '2mg Baricitinib', 'JAK Inhibitor', 'Adults', '50'),
('Painful joint flares', 'Arthritis', 'Adalimumab', '40mg Adalimumab', 'TNF Inhibitor', 'Adults', '1200'),
('Chronic joint pain in elderly', 'Arthritis', 'Etanercept', '50mg Etanercept', 'TNF Inhibitor', 'Adults', '1100'),
('Severe inflammation in wrists', 'Arthritis', 'Infliximab', '100mg Infliximab', 'TNF Inhibitor', 'Adults', '1300'),
('Painful swelling of knees and ankles', 'Arthritis', 'Golimumab', '50mg Golimumab', 'TNF Inhibitor', 'Adults', '1400'),
('Joint pain with limited mobility', 'Arthritis', 'Certolizumab Pegol', '200mg Certolizumab Pegol', 'TNF Inhibitor', 'Adults', '1500'),
('Pain with joint stiffness in mornings', 'Arthritis', 'Anakinra', '100mg Anakinra', 'IL-1 Receptor Antagonist', 'Adults', '1000'),
('Joint pain exacerbated by cold', 'Arthritis', 'Tocilizumab', '162mg Tocilizumab', 'IL-6 Receptor Antagonist', 'Adults', '1400'),
('Painful joints with hot swelling', 'Arthritis', 'Sarilumab', '150mg Sarilumab', 'IL-6 Receptor Antagonist', 'Adults', '1300'),
('Joint stiffness and reduced flexibility', 'Arthritis', 'Rituximab', '500mg Rituximab', 'B-Cell Depleting Agent', 'Adults', '2500'),
('Recurring pain and joint locking', 'Arthritis', 'Abatacept', '125mg Abatacept', 'T-Cell Costimulation Modulator', 'Adults', '2000'),
('Persistent knee pain with swelling', 'Arthritis', 'Hyaluronic Acid', '20mg Hyaluronic Acid', 'Intra-Articular Injection', 'Adults', '500'),
('Joint pain with systemic inflammation', 'Arthritis', 'Corticosteroid Injection', 'Methylprednisolone Acetate 40mg', 'Intra-Articular Injection', 'Adults', '250'),
('Severe pain with deformity in fingers', 'Arthritis', 'Triamcinolone Injection', '40mg Triamcinolone Acetonide', 'Intra-Articular Injection', 'Adults', '200'),
('Arthritis pain worsened by weight bearing', 'Arthritis', 'Capsaicin Cream', '0.025% Capsaicin', 'Topical Analgesic', 'Adults', '20'),
('Chronic pain and swelling in wrists', 'Arthritis', 'Diclofenac Gel', '1% Diclofenac', 'Topical NSAID', 'Adults', '15'),
('Recurring arthritis flares', 'Arthritis', 'Glucosamine Sulfate', '500mg Glucosamine', 'Nutritional Supplement', 'All ages', '10'),
('Joint pain with stiffness in cold weather', 'Arthritis', 'Chondroitin Sulfate', '400mg Chondroitin', 'Nutritional Supplement', 'All ages', '12');

--Diabetes
INSERT INTO PharmaArticles (SymptomDescription, Condition, DrugName, DrugComposition, SubstanceType, AgeTarget, PriceUSD)
VALUES 
('Frequent urination and excessive thirst', 'Diabetes Type A', 'Insulin Glargine', '100 Units/mL Insulin Glargine', 'Long-acting Insulin', 'All ages', '150'),
('Unexplained weight loss and fatigue', 'Diabetes Type A', 'Insulin Lispro', '100 Units/mL Insulin Lispro', 'Rapid-acting Insulin', 'All ages', '120'),
('High blood sugar levels', 'Diabetes Type A', 'Insulin Aspart', '100 Units/mL Insulin Aspart', 'Rapid-acting Insulin', 'All ages', '110'),
('Blurred vision and slow healing wounds', 'Diabetes Type A', 'Insulin Detemir', '100 Units/mL Insulin Detemir', 'Long-acting Insulin', 'All ages', '140'),
('Constant hunger and tiredness', 'Diabetes Type A', 'Insulin Glulisine', '100 Units/mL Insulin Glulisine', 'Rapid-acting Insulin', 'All ages', '125'),
('Elevated blood glucose levels', 'Diabetes Type A', 'NPH Insulin', '100 Units/mL NPH Insulin', 'Intermediate-acting Insulin', 'All ages', '80'),
('Frequent hypoglycemic episodes', 'Diabetes Type A', 'Regular Insulin', '100 Units/mL Regular Insulin', 'Short-acting Insulin', 'All ages', '75'),
('Elevated blood sugar after meals', 'Diabetes Type B', 'Metformin', '500mg Metformin', 'Biguanide', 'Adults', '10'),
('Difficulty controlling blood sugar', 'Diabetes Type B', 'Glipizide', '5mg Glipizide', 'Sulfonylurea', 'Adults', '15'),
('Increased thirst and urination', 'Diabetes Type B', 'Glyburide', '5mg Glyburide', 'Sulfonylurea', 'Adults', '12'),
('Blood sugar spikes post-meals', 'Diabetes Type B', 'Glimepiride', '2mg Glimepiride', 'Sulfonylurea', 'Adults', '20'),
('Insulin resistance and high sugar levels', 'Diabetes Type B', 'Pioglitazone', '15mg Pioglitazone', 'Thiazolidinedione', 'Adults', '18'),
('Reduced insulin sensitivity', 'Diabetes Type B', 'Rosiglitazone', '4mg Rosiglitazone', 'Thiazolidinedione', 'Adults', '20'),
('Difficulty in glucose absorption', 'Diabetes Type B', 'Acarbose', '50mg Acarbose', 'Alpha-glucosidase Inhibitor', 'Adults', '15'),
('Control post-meal sugar levels', 'Diabetes Type B', 'Miglitol', '25mg Miglitol', 'Alpha-glucosidase Inhibitor', 'Adults', '18'),
('Poor glucose utilization', 'Diabetes Type B', 'Sitagliptin', '100mg Sitagliptin', 'DPP-4 Inhibitor', 'Adults', '25'),
('Inadequate insulin production', 'Diabetes Type B', 'Linagliptin', '5mg Linagliptin', 'DPP-4 Inhibitor', 'Adults', '30'),
('Difficulty maintaining fasting glucose', 'Diabetes Type B', 'Alogliptin', '25mg Alogliptin', 'DPP-4 Inhibitor', 'Adults', '28'),
('Excessive hunger with high sugar', 'Diabetes Type B', 'Canagliflozin', '100mg Canagliflozin', 'SGLT2 Inhibitor', 'Adults', '35'),
('High sugar with weight gain', 'Diabetes Type B', 'Dapagliflozin', '10mg Dapagliflozin', 'SGLT2 Inhibitor', 'Adults', '40'),
('Persistent hyperglycemia', 'Diabetes Type B', 'Empagliflozin', '10mg Empagliflozin', 'SGLT2 Inhibitor', 'Adults', '38'),
('Difficulty with sugar regulation', 'Diabetes Type B', 'Ertugliflozin', '5mg Ertugliflozin', 'SGLT2 Inhibitor', 'Adults', '35'),
('Improper glucose metabolism', 'Diabetes Type B', 'Exenatide', '5mcg Exenatide', 'GLP-1 Receptor Agonist', 'Adults', '60'),
('Need for better sugar control', 'Diabetes Type B', 'Liraglutide', '1.8mg Liraglutide', 'GLP-1 Receptor Agonist', 'Adults', '70'),
('Elevated fasting glucose', 'Diabetes Type B', 'Dulaglutide', '1.5mg Dulaglutide', 'GLP-1 Receptor Agonist', 'Adults', '80'),
('Severe insulin resistance', 'Diabetes Type B', 'Semaglutide', '0.5mg Semaglutide', 'GLP-1 Receptor Agonist', 'Adults', '90'),
('Post-meal glucose spikes', 'Diabetes Type B', 'Lixisenatide', '20mcg Lixisenatide', 'GLP-1 Receptor Agonist', 'Adults', '65'),
('Inconsistent glucose levels', 'Diabetes Type B', 'Insulin Degludec', '100 Units/mL Insulin Degludec', 'Ultra Long-acting Insulin', 'Adults', '150'),
('Combination therapy for high glucose', 'Diabetes Type B', 'Metformin/Sitagliptin', '500mg/50mg Metformin/Sitagliptin', 'Combination Therapy', 'Adults', '40'),
('Managing both fasting and post-meal sugar', 'Diabetes Type B', 'Metformin/Canagliflozin', '500mg/100mg Metformin/Canagliflozin', 'Combination Therapy', 'Adults', '45'),
('Managing glucose and cardiovascular risks', 'Diabetes Type B', 'Empagliflozin/Linagliptin', '10mg/5mg Empagliflozin/Linagliptin', 'Combination Therapy', 'Adults', '50'),
('Improving insulin sensitivity and secretion', 'Diabetes Type B', 'Glimepiride/Metformin', '2mg/500mg Glimepiride/Metformin', 'Combination Therapy', 'Adults', '35'),
('Poor glucose control during pregnancy', 'Diabetes Type A', 'Insulin Regular', '100 Units/mL Insulin Regular', 'Short-acting Insulin', 'Pregnant Women', '100'),
('Frequent blood sugar drops', 'Diabetes Type A', 'Insulin Aspart Mix', '70/30 Insulin Aspart/Protamine', 'Mixed Insulin', 'All ages', '130'),
('Difficulty maintaining glucose during meals', 'Diabetes Type B', 'Repaglinide', '2mg Repaglinide', 'Meglitinide', 'Adults', '20'),
('Persistent high sugar in elderly', 'Diabetes Type B', 'Nateglinide', '120mg Nateglinide', 'Meglitinide', 'Elderly', '22');
