<?php
include "path.php";
include "app/controllers/topics.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
          integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    <!-- Custom Styling -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <title>My blog</title>
</head>
<body>

<?php include("app/include/header.php"); ?>

<div class="container">
    <div class="content row">
        <!-- Main Content -->
        <section class="col-md-8">
            <h2>Наші послуги для собак</h2>
            <h3>1. Грумінг та стрижка</h3>
            <div class="service">
                <div class="row">
                    <div class="col-md-4">
                        <img src="assets/images/grooming.jpg" alt="Грумінг та стрижка 1" class="img-fluid" >
                    </div>
                    <div class="col-md-4">
                        <img src="assets/images/grooming2.jpg" alt="Грумінг та стрижка 2" class="img-fluid">
                    </div>
                    <div class="col-md-4">
                        <img src="assets/images/grooming3.jpg" alt="Грумінг та стрижка 3" class="img-fluid">
                    </div>
                </div>
                <p>Надамо послуги з грумінгу та стрижки для собак різних порід. Ваші улюбленці завжди будуть виглядати на висоті!</p>
                <p>Контактна інформація: Телефон: + 380 (98) 456-7890, Email: grooming@example.com</p>
            </div>

            <h3>2. Тренінг та дресирування</h3>
            <div class="service">
                <div class="row">
                    <div class="col-md-4">
                    <img src="assets/images/training.jpg" alt="Тренінг та дресирування 1" class="img-fluid" >
                </div>
                <div class="col-md-4">
                    <img src="assets/images/training2.jpg" alt="Тренінг та дресирування 2" class="img-fluid">
                </div>
                <div class="col-md-4">
                    <img src="assets/images/training3.jpg" alt="Тренінг та дресирування 3" class="img-fluid">
                </div>
            </div>
                <p>Пропонуємо послуги з тренінгу та дресирування собак. Розкажемо, як правильно виховувати та навчати вашого чотирилапого друга.</p>
                <p>Контактна інформація: Телефон: +380 (66) 567-8901, Email: training@example.com</p>
            </div>

            <h3>3. Консультації ветеринара</h3>
            <div class="service">
                <div class="row">
                    <div class="col-md-4">
                        <img src="assets/images/vet_consultation.jpg" alt="Консультації ветеринара" class="img-fluid" >
                    </div>
                    <div class="col-md-4">
                        <img src="assets/images/vet_consultation2.jpg" alt="Консультації ветеринара" class="img-fluid">
                    </div>
                    <div class="col-md-4">
                        <img src="assets/images/vet_consultation3.jpg" alt="Консультації ветеринара" class="img-fluid">
                    </div>
                </div>
                <p>Наші ветеринарні фахівці готові відповісти на всі ваші питання та надати консультації щодо здоров'я та догляду за собакою.</p>
                <p>Контактна інформація: Телефон: +380 (68) 678-9012, Email: vet@example.com</p>
            </div>

            <h3>4. Прогулянки з собакою</h3>
            <div class="service">
                <div class="row">
                    <div class="col-md-4">
                        <img src="assets/images/dog_walking.jpg" alt="Прогулянки з собакою" class="img-fluid" >
                    </div>
                    <div class="col-md-4">
                        <img src="assets/images/dog_walking2.jpeg" alt="Прогулянки з собакою" class="img-fluid">
                    </div>
                    <div class="col-md-4">
                        <img src="assets/images/dog_walking3.jpg" alt="Прогулянки з собакою" class="img-fluid">
                    </div>
                <p>Організація прогулянок для собак, щоб ваші улюбленці мали можливість отримати достатню фізичну активність.</p>
                <p>Контактна інформація: Телефон: +380 (50) 789-0123, Email: dogwalking@example.com</p>
            </div>

            <!-- Добавьте другие услуги и изображения по аналогии -->

        </section>

        <!-- Sidebar -->
        <aside class="col-md-4">
            <!-- Додайте додатковий контент або бокову панель за потреби -->
        </aside>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

</body>
</html>
