<?php
// контроллер
include_once SITE_ROOT . "/app/database/db.php";

// Вибірка всіх коментарів для адміністратора
$commentsForAdm = selectAll('comments');

$page = $_GET['post'];
$email = '';
$comment = '';
$errMsg = [];
$status = 0;
$comments = [];

// Код для форми створення коментаря
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['goComment'])) {
    $email = trim($_POST['email']);
    $comment = trim($_POST['comment']);

    if ($email === '' || $comment === '') {
        array_push($errMsg, "Не всі поля заповнені!");
    } elseif (mb_strlen($comment, 'UTF8') < 50) {
        array_push($errMsg, "Коментар повинен бути довше 50 символів");
    } else {
        $user = selectOne('users', ['email' => $email]);

        // Перевірка, чи є користувач адміністратором
        if ($user['email'] == $email && $user['admin'] == 1) {
            $status = 1;
        }

        $commentData = [
            'status' => $status,
            'page' => $page,
            'email' => $email,
            'comment' => $comment
        ];

        // Додавання коментаря до бази даних
        insert('comments', $commentData);

        // Вибірка всіх коментарів для виведення на сторінці
        $comments = selectAll('comments', ['page' => $page, 'status' => 1]);
    }
} else {
    $email = '';
    $comment = '';

    // Вибірка всіх коментарів для виведення на сторінці
    $comments = selectAll('comments', ['page' => $page, 'status' => 1]);
}

// Видалення коментаря
if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['delete_id'])) {
    $id = $_GET['delete_id'];
    delete('comments', $id);
    header('location: ' . BASE_URL . 'admin/comments/index.php');
}

//// Статус опубликовать или снять с публикации
//if($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['pub_id'])){
//    $id = $_GET['pub_id'];
//    $publish = $_GET['publish'];
//
//    $postId = update('comments', $id, ['status' => $publish]);
//
//    header('location: ' . BASE_URL . 'admin/comments/index.php');
//    exit();
//}


//// АПДЕЙТ СТАТЬИ
//if($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['id'])){
//    $oneComment = selectOne('comments', ['id' => $_GET['id']]);
//    $id =  $oneComment['id'];
//    $email =  $oneComment['email'];
//    $text1 = $oneComment['comment'];
//    $pub = $oneComment['status'];
//}
//
//if($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['edit_comment'])){
//    $id =  $_POST['id'];
//    $text = trim($_POST['content']);
//    $publish = isset($_POST['publish']) ? 1 : 0;
//
//    if($text === ''){
//        array_push($errMsg, "Комментарий не имеет содержимого текста");
//    }elseif (mb_strlen($text, 'UTF8') < 50){
//        array_push($errMsg, "Количество символов внутри комментария меньше 50");
//    }else{
//        $com = [
//            'comment' => $text,
//            'status' => $publish
//        ];
//
//        $comment = update('comments', $id, $com);
//        header('location: ' . BASE_URL . 'admin/comments/index.php');
//    }
//}else{
//    $text = trim($_POST['content']);
//    $publish = isset($_POST['publish']) ? 1 : 0;
//}