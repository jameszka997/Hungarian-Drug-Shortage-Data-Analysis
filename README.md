# Hungarian-Drug-Shortage-Data-Analysis
This repository is intended to showcase identifying trends and patterns within the Drug Shortage List of the Hungarian Pharmaceutical Market based on the NNGYK's data base.

---

## ✨ Primary Questions which this project aimed to address
- Analysing the number of shortages of drugs within the Hungarian Pharmaceutical Drug Market based on Year & Companies which hold the license for the Drug
- Developing an interactive visual based on ATC codes of the drugs within the database
- Establishing what drugs have currently on-going shortages with planned end-dates


---

## 🔍︎ Dataset characteristics
Dataset was retrieved from the Hungarian NNGYK center ('Nemzeti Népegészségügyi és Gyógyszerészeti Központ').
Dataset is publicly available from the [NNGYK Pharmaceutical Drug Database](https://ogyei.gov.hu/gyogyszeradatbazis) website by clicking on the **Összes termékhiány** button which downloads the currently registered shortage list within the NNGYK's database as a .csv file.

The dataset for analysis was downloaded and representative of all shortage entries until *2025/11/11*.

The dataset consists of 10 columns

| `(Data Type)` Column Name | Column Description |
| -- | -- |
| `(Text)` Termék neve | Name & Dosage of the Product in shortage |
| `(Text)` Kiszerelés neve | Size, Type of packaging & Quantity of the product which is in shortage |
| `(Text)` TK szám | 'Nyilvántartási szám' - Number assigned to the product, as well as the packaging details assigned to it (Number designates it after the '/' | 
| `(Text)` Hatóanyag | Active Pharmaceutical Ingredient within the product |	
| `(Text)` Forg Eng Jog | 'Forgalomba Hozatali Engedély Jogosultja' - Owner of the marketing license for the sale of the product within Hungary |
| `(Text)` ATC kód 1/ATC kód 2 | ATC code, refers to the code of the Active Pharmaceutical Ingredient within the product based on the Active Therapeutic Chemical or ATC coding system maintained by the WHO |
| `(Date)` A hiány kezdete	| Start of the reported shortage |
| `(Date)` A hiány tervezett vége | End of the reported shortage |
| `(Text)` A hiány oka | Reason for the reported shortage |
| `(Text)` Javaslat a hiánykészítmény pótlására | Recommendation for the remedying of the reported shortage |



---


