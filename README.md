# Hungarian-Drug-Shortage-Data-Analysis
This repository is intended to showcase identifying trends and patterns within the Drug Shortage List of the Hungarian Pharmaceutical Market based on the NNGYK's data base.

---

## Primary Questions which this project aimed to address
- Analysing the number of shortages of drugs within the Hungarian Pharmaceutical Drug Market based on Year & Companies which hold the license for the Drug
- Developing an interactive visual based on ATC codes of the drugs within the database
- Establishing what drugs have currently on-going shortages with planned end-dates


---

## Dataset characteristics
Dataset was retrieved from the Hungarian NNGYK center ('Nemzeti Népegészségügyi és Gyógyszerészeti Központ').
Dataset is publicly available from the [NNGYK Pharmaceutical Drug Database](https://ogyei.gov.hu/gyogyszeradatbazis) website by clicking on the **Összes termékhiány** button which downloads the currently registered shortage list within the NNGYK's database as a .csv file.

The dataset for analysis was downloaded and representative of all shortage entries until *2025/11/11*.

The dataset consists of 10 columns

| Column Name | Column Description |
| -- | -- |
| Termék neve | Name of the Product in Shortage
Kiszerelés neve	TK szám	Hatóanyag	Forg Eng Jog	ATC kód 1/ATC kód 2	A hiány kezdete	A hiány tervezett vége	A hiány oka	Javaslat a hiánykészítmény pótlására
