<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <title>회원가입</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="./resources/assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />

  <!-- Bootstrap core CSS -->
<link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">

<style>
   .bd-placeholder-img {
      font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      .form-join{
         width: 30%;
         align: center;
         margin: 0 auto;
         margin-top: 20px;
      }
</style>
</head>
<body class="text-center">
   <section>
      <main class="form-join">
           <form action="join_save" method="post">
             <h1 class="h3 mb-3 fw-normal">Join</h1>

             <div class="form-floating">
                  <input type="text" class="form-control" name="mem_id" placeholder="ID">
                  <label for="floatingInput">ID</label>
             </div>
             <br>
             <div class="form-floating">
                  <input type="password" class="form-control" name="mem_pw" placeholder="Password">
                  <label for="floatingPassword">Password</label>
             </div>
             <br>

             <div class="form-floating">
                  <input type="text" class="form-control" name="mem_name" placeholder="Name">
                  <label for="floatingName">Name</label>
             </div>
             <br>
             
             <div class="form-floating">
                  <input type="date" class="form-control" name="mem_birth" placeholder="Birth">
                  <label for="floatingBirth"></label>
             </div>
             <br>
             
             <div class="form-floating">
                  <input type="text" class="form-control" name="mem_tel" placeholder="Tel">
                  <label for="floatingTel">Tel</label>
             </div>
             <br>
             
             <div class="form-floating">
                  <input type="text" class="form-control" name="mem_email" placeholder="Email">
                  <label for="floatingEmail">Email</label>
             </div>
             <br>
             
             <div class="form-floating">
                  <input type="text" class="form-control" name="mem_addr" placeholder="Addr">
                  <label for="floatingAddr">Address</label>
             </div>
             <br>

             
             <button class="w-100 btn btn-lg btn-primary" type="submit">Join</button>
          </form>
      </main>
   </section>
</body>
</html>
