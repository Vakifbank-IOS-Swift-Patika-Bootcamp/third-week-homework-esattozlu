
# Third-Week-Homework

1- CompanyManagementApp
--
### 1. Şirket Kayıt
- CompanyManagementApp, şirket ismi, kuruluş yılı ve bütçe ile şirket oluşturulan bir uygulamadır. Uygulamada, şirkete çalışan eklenebilir, çalışanlar listelenebilir, bütçeye gelir & gider eklenebilir ve bütçeden maaşlar ödenebilir.
- Küçük cihazlarda da çalışabilmesi için (en küçük iPhoneSE 3rd Gen) textField'lara tıklandığında klavye açılırken ekran yukarı hareket eder.

<td><img src="https://user-images.githubusercontent.com/96587699/202916045-f55b2bb0-9fb4-4468-8321-4629deec41d7.png" alt="drawing" width="250"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/202916051-8696f399-18ce-4c2e-a698-ff6ceda6b578.png" alt="drawing" width="250"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/202916053-d3333e01-2422-4665-beda-d83fc30a1162.png" alt="drawing" width="250"/></td>  

- Şirket kayıt ekranından, ImagePickerController ile galeriden logo seçimi yapılır.
- Şirket adı, bütçe ve kuruluş yılı bilgileri girilerek create ile şirket oluşturulur.

### 2. Şirket Detay
<td><img src="https://user-images.githubusercontent.com/96587699/202916054-43afbb67-8784-431e-b302-79cebd6a0d5e.png" alt="drawing" width="250"/></td>  

- Şirket detay sayfasında görseldeki şekilde detay bilgiler gösterilir.
- Çalışan sayısı ve toplam maaş alanları, çalışan eklendikten sonra güncellenir.
- Gelir ve gider eklemeleri bu sayfadan yapılabilir.
- Yeni çalışan ekleme ve çalışan listeleme sayfalarına geçiş yapılabilir.

### 3. Çalışan Ekleme
<td><img src="https://user-images.githubusercontent.com/96587699/202916091-63d92330-2513-419a-a27f-8e10b38c617d.png" alt="drawing" width="250"/></td>  

- Çalışan adı, title, yaş, id, medeni hal bilgileri girildikten sonra text editleme işlemi bitince maaş otomatik hesaplanır.
- Title ve medeni hal PickerView'den seçilir. 
- PickerView ilk açıldığında ilk index default olarak seçilmiş gelir.

### 4. Çalışan Listeleme <table>  

<td><img src="https://user-images.githubusercontent.com/96587699/202916064-826f03f6-f997-4d9e-8112-40127a19ee25.png" alt="drawing" width="250"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/202916065-a03ff0d7-910d-4479-81d0-9e4fad7892d4.png" alt="drawing" width="250"/></td>  

- Listeleme ekranında, çalışanlar, yaş, medeni hal, id, maaş ve title'ları ile listelenir.
- Çalışanlar isimlerine göre aratılabilir. Aratma case insensitive olarak gerçekleşir.
- Aratma yapılırken ilk harfler yazıldıkça listeleme anlık güncellenir.

### 5. Uyarılar

<td><img src="https://user-images.githubusercontent.com/96587699/202916069-8f05766a-22ea-416e-b586-756981d31e71.png" alt="drawing" width="250"/></td>   
<td><img src="https://user-images.githubusercontent.com/96587699/202916138-69e1fb21-1dbe-48e0-b2b3-065cc4f5459a.png" alt="drawing" width="250"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/202916142-8120238d-4d99-4baf-901c-28eea397b443.png" alt="drawing" width="250"/></td>  

Bazı örnek uyarılar yukarıdaki görsellerde mevcuttur.
#### Diğer Uyarılar
- **Boşluklar doldurulmadığında:** "Please make sure you fill in the blanks correctly."
- **Numeric alanlar doldurulmadığında veya non numeric doldurulduğunda:** "Please make sure you enter a value. The value you enter must be numeric."
- **Age ve id numeric doldurulmadığında:** "Age and Id should be integer." 
- **Aynı id'li çalışan eklenmek istendiğinde:** "There is already an employee with id: \(employeeId). Please try another id."
- **Bütçe gider eklemeye yetersiz ise:** "There is not enough money to pay expense. Please add income to budget case."
- **Çalışan maaşları ödendiğinde:** "\(totalSalary.formattedWithSeparator)₺ employee salaries are paid. Remaining budget: \(budget.formattedWithSeparator)₺."
- **Maaşlara yeterli bütçe yoksa:** "There is not enough money to pay salaries. Please add income to budget case."
- **Çalışan yokken maaş ödenmek istendiğinde:** "There is no employee to pay salary."

2- ZooManagementApp
--
- ZooManagementApp, hayvanat bahçesi ismi, logosu,  su limiti ve bütçe ile hayvanat bahçesi oluşturulan bir uygulamadır. Uygulamadan, hayvanat bahçesine bakıcı ve hayvanlar eklenebilir, hayvanlara bakıcı atanabilir, hayvanlar ve çalışanlar listelenebilir, hayvan sesleri dinlenebilir, su limiti güncellenebilir, bütçeye gelir & gider eklenebilir ve bütçeden maaşlar ödenebilir.

### 1. Hayvanat Bahçesi Kayıt

<td><img src="https://user-images.githubusercontent.com/96587699/202917847-591b1a43-7780-4a6d-905c-9eb8c4e969d7.png" alt="drawing" width="250"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/202917685-c211e6bd-6f71-40c0-916e-e4e2c45235d9.png" alt="drawing" width="250"/></td>  

- Hayvanat bahçesi logosu ImagePickerController ile galeriden seçilir.
- İsim, bütçe ve su limiti bilgileriyle hayvanat bahçesi oluşturulur.

### 2. Şirket Detay
<td><img src="https://user-images.githubusercontent.com/96587699/202917688-d114df2d-2e2d-4651-9b2b-0108dfae4539.png" alt="drawing" width="250"/></td>  

- Yukarıdaki görseldeki gibi hayvanat bahçesinin bilgilerine ulaşılabilir.
- Bakıcı sayısı ve maaşları çalışan eklenince güncellenir.
- Kalan su limiti hayvan ekledikçe azalır.
- Bütçeye gelir gider eklemesi yapılabilir.
- Bakıcı maaşları ödenebilir.
- Su limiti değiştirilebilir veya istenen miktarda arttırılabilir.
- Hayvan ve Bakıcı listeleme, yeni bakıcı ekleme ve yeni hayvan ekleme sayfalarına geçiş yapılabilir.

### 3. Çalışan Ekleme
<td><img src="https://user-images.githubusercontent.com/96587699/202917692-f220e71f-3082-4b2c-b02b-63c70da03a02.png" alt="drawing" width="250"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/202917696-eb500c33-28b5-40c3-ada1-de281cb822f4.png" alt="drawing" width="250"/></td>  

- Çalışan ismi, id'si ve yaşı girildikten sonra maaş otomatik olarak hesaplanır. Salary text field etkinleştirilmediği için sadece görüntüleme yapılabilir.
- Aynı id ye sahip çalışan eklenemez.

### 4. Hayvan Ekleme
<td><img src="https://user-images.githubusercontent.com/96587699/202917703-0c8a53a2-050d-4a22-a6a6-78f72c8fdd01.png" alt="drawing" width="250"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/202917707-1e5867d8-ed71-4260-b5fd-a05a01213e40.png" alt="drawing" width="250"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/202917709-012ccd26-5a2d-4bf2-bfd9-4a13f965570b.png" alt="drawing" width="250"/></td>  

- Hayvanat bahçesine bakıcı eklenmeden hayvan eklemesi yapılamaz.
- Hayvan listesi içinden pickerView ile hayvan seçimi yapılır. Picker açıldığında ilk hayvan default olarak seçilir.
- Hayvanların su limitleri önceden tanımlanmıştır. Water consumption textField etkinsizleştirildiği için değiştirilemez. Sadece görüntülenir.
- Hayvanat bahçesine önceden eklenen bakıcılar pickerView ile seçilir. Default olarak ilk bakıcı seçilir.
- Önceden tanımlanmış bir hayvan increase animal count butonu ile arttırılabilir.
- Önceden tanımlanmış bir hayvan seçildiğinde bakıcısı otomatik gelir ve textField'ı etkinsizleştirilir.
- Aynı hayvana farklı bakıcı atanamaz.

### 5. Hayvan & Bakıcı Listeleme
<td><img src="https://user-images.githubusercontent.com/96587699/202917710-10229c3c-f1af-4c48-b5b5-b93ea2ad8263.png" alt="drawing" width="250"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/202917713-43b97186-598e-4731-b293-7eadeef64257.png" alt="drawing" width="250"/></td>  

- Segmented Control ile hayvan ve bakıcı listeleme tableview'leri arasında geçiş yapılabilir.
- Hayvanlar, resimleriyle, isim, su tüketimi, sayı ve bakıcı bilgileriyle listelenir.
- Hoperlör butonuna tıklandığında hayvanın sesi dinlenebilir.
- Bakıcılar isim, id, yaş ve sorumlu oldukları hayvanlar ile listelenir.
- Bakıcı cell'i içinde ayrı bir tableView içerisinde hayvanlar listelenir.

### 5. Uyarılar

<td><img src="https://user-images.githubusercontent.com/96587699/202917716-bce9cd99-12b3-4c81-82b8-6426bba291e8.png" alt="drawing" width="250"/></td>   
<td><img src="https://user-images.githubusercontent.com/96587699/202917719-f283a98e-5b3a-4fd1-a06a-6d8382f0c079.png" alt="drawing" width="250"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/202917721-f532bccf-6f7c-468d-afab-0fc289340146.png" alt="drawing" width="250"/></td>  

Bazı örnek uyarılar yukarıdaki görsellerde mevcuttur.
#### Diğer Uyarılar

- **Boşluklar doldurulmadığında veya hatalı doldurulduğunda:** "Please make sure you fill in the blanks correctly."
-  **Numeric alana değer girilmediğinde veya non numeric değer girildiğinde:** "Please make sure you enter a value. The value you enter must be numeric."
- **Hayvanat bahçesinde bakıcı yokken hayvan eklenmek istendiğinde:** "Before adding new animal you should add at least one keeper."
 - **Yaş ve id non numeric girildiğinde:** "Age and id should be integer."
- **Hayvan yokken hayvan sayısı eklenmek istendiğinde:** "There is no animal in the zoo. Please use Create Animal button."
- **Aynı id'li çalışan eklenmek istendiğinde:** "There is already a keeper with id: \(keeper.keeperId). Please try another id."
- **Daha önce eklenen bir hayvan yeniden oluşturulmak istenirse:** "There is already an animal with breed: \(animalBreed). Please click Increase Animal Count button."
- **Sayısı arttırılmak istenen hayvan daha önce oluşturulmadıysa:** "Breed: \(animalBreed) animal is not previosly defined. Please click Create Animal button."
- **Eklemek istenen hayvan sayısında su limiti yeterli değilse:** "Remaining water limit of zoo is not enough to get \(count) \(animalBreed). Please increase the water limit at least \((waterConsumption * Double(count) - remainingLimit).formattedWithSeparator)."
- **Bütçe gider eklemeye yetersiz ise:** "There is not enough money to pay expense. Please add income to budget case."
- **Çalışan maaşları ödendiğinde:** "\(totalSalary.formattedWithSeparator)₺ keeper salaries are paid. Remaining budget: \(budget.formattedWithSeparator)₺."
- **Maaşlara yeterli bütçe yoksa:** "There is not enough money to pay salaries. Please add income to budget case."
- **Çalışan yokken maaş ödenmek istendiğinde:** "There is no keeper to pay salary."

3- RandomQuoteServiceCall
--
- RandomQuoteServiceCall, scrollView üzerinde butonu ve label'ı olan, butona tıklanınca API'dan string çeken bir uygulamadır.
- Açılış ekranında, ekranın scrollable olduğunu gösterebilmek için uzun bir lorem metni çıkar.
- Butona basınca veri çekilerek label'a yazdırılır.

<td><img src="https://user-images.githubusercontent.com/96587699/202918146-41d59d54-278e-4bc1-86a7-44ac397c7366.png" alt="drawing" width="250"/></td>  
<td><img src="https://user-images.githubusercontent.com/96587699/202918148-09bbea0f-619f-45f5-a464-e46bc08777e6.png" alt="drawing" width="250"/></td>  
